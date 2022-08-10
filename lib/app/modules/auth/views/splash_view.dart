import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/app/modules/auth/controllers/auth_controller.dart';
import 'package:my_app/app/modules/auth/views/auth_view_view.dart';
import 'package:my_app/app/modules/auth/views/login_view_view.dart';

import '../../home/views/home_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  final controller = Get.put(AuthController());
  var _visible = true;

  AnimationController? animationController;
  Animation<double>? animation;

  startTime() async {
    var duration = const Duration(seconds: 5);
    return Timer(duration, navigationPage);
  }

  void navigationPage() {
    Get.offAllNamed('/auth');
  }

  @override
  void initState() {
    super.initState();

    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    animation =
        // ignore: unnecessary_new
        new CurvedAnimation(
            parent: animationController!, curve: Curves.easeOut);

    animation!.addListener(() => setState(() {}));
    animationController!.forward();

    setState(() {
      _visible = !_visible;
    });
    startTime();
    //controller.chechCurrentUser();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
     // controller.chechCurrentUser();
     if(FirebaseAuth.instance.currentUser != null){
      Get.offAll(()=> const HomeView());
     }
     else{
      Get.offAll(()=>const AuthView());
     }
     });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: const [
                Padding(
                    padding: EdgeInsets.only(bottom: 30.0),
                    child: Text(
                      'MY FYP APPLICATION',
                      style: TextStyle(
                          color: Colors.greenAccent,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                    //  Image.asset(
                    //   'assets/powered_by.png',
                    //   height: 25.0,
                    //   fit: BoxFit.scaleDown,
                    // )
                    )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/images/student.png',
                  width: animation!.value * 250,
                  height: animation!.value * 250,
                ),
              ],
            ),
          ],
        ),
        // ignore: unnecessary_null_compariso
    );
  }
}
