import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:my_app/app/modules/auth/views/auth_view_view.dart';
import 'package:my_app/app/modules/home/views/home_view.dart';
import 'package:my_app/data/auth_repo.dart';
import 'package:my_app/models/user.dart';

class AuthController extends GetxController {
  //TODO: Implement AuthController
  RxBool isLoading = false.obs;

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final authRepo = AuthRepo();

 late UserModel? currentUser;

  // Future<void> chechCurrentUser() async {
  //   if (currentUser != null) {
  //     Get.offAllNamed('/home');
  //   } else {
      
  //   }
  // }

  Future<void> loginUser(
      BuildContext context, emailController, passwordController) async {
    isLoading.value = true;
    try {
      currentUser = await authRepo.login(emailController, passwordController);
      if (currentUser != null) {
        isLoading.value = false;
        Get.offAll(
          const HomeView(),
        );
      } else {
        Get.back();
        isLoading.value = false;
      }
    } on FirebaseAuthException catch (error, stk) {
      Get.snackbar(error.toString(), 'An Occured While Signing in');
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> signUpUser(
      BuildContext context, emailController, passwordController) async {
    final UserModel user = UserModel(name: '', email: emailController, uid: '');
    isLoading.value = true;
    try {
      currentUser =
          await authRepo.signUp(user: user, password: passwordController).then(
        (value) {
          if (currentUser != null) {
            Get.offAll(() => const HomeView());
          }
          isLoading.value = false;
          return null;
        },
      );
    } on FirebaseAuthException catch (error, stk) {
      Get.snackbar(error.toString(), 'An Error Occured');
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> signOut() async {
    isLoading.value = true;
    await FirebaseAuth.instance.signOut();
    isLoading.value = false;
    Get.offAll(const AuthView());
  }

  final count = 0.obs;
  @override
  void onInit() {
   // chechCurrentUser();
    super.onInit();
  }

  void clearEditors() {
    emailController.clear();
    passwordController.clear();
  }
  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   emailController!.dispose();
  //   passwordController!.dispose();
  //   super.dispose();
  // }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    isLoading.close();
    super.onClose();
  }

  void increment() => count.value++;
}
