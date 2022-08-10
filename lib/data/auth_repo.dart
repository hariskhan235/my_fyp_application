import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:my_app/models/user.dart';

class AuthRepo {
  final _firebaseAuth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;

  Future<UserModel?> checkCurrentUser() async {
    final currentUser = _firebaseAuth.currentUser;

    if (currentUser != null) {
      final documentSnapshot =
          await _firestore.collection('users').doc(currentUser.uid).get();

      if (documentSnapshot.exists) {
        final firebaseUser = UserModel.fromJson(documentSnapshot.data()!);
        return firebaseUser;
      } else {
        return null;
      }
    }
  }

  Future<UserModel?> login(String email, String password) async {
    try {
      final UserCredential credential = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);

      final firebaseUser =
          await _firestore.collection('users').doc(credential.user!.uid).get();

      final appUser = UserModel.fromJson(firebaseUser.data()!);
      return appUser;
    } on FirebaseAuthException catch (error, stk) {
      print('An Error occur during sign in $error \n Stacktrace: $stk');
      throw FirebaseAuthException(code: error.code, message: error.message);
    } catch (e) {
      print(e.toString());
    }
    return null;
  }

  Future<UserModel?> signUp(
      {required UserModel user, required String password}) async {
    try {
      final UserCredential credential =
          await _firebaseAuth.createUserWithEmailAndPassword(
              email: user.email, password: password);

      user.uid = credential.user!.uid;
      await _firestore
          .collection('users')
          .doc(credential.user!.uid)
          .set(user.toJson());
      return user;
    } on FirebaseAuthException catch (error, stk) {
      print('An Error occur during Sign Up in $error \n Stacktrace: $stk');
      throw FirebaseAuthException(code: error.code, message: error.message);
    } catch (e) {
      print(e.toString());
    }

    return null;
  }
}
