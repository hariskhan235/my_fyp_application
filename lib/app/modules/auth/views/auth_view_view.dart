import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:my_app/app/modules/auth/controllers/auth_controller.dart';
import 'package:my_app/app/modules/auth/views/login_view_view.dart';
import 'package:my_app/app/modules/auth/views/register_view_view.dart';

class AuthView extends GetView<AuthController>{
  const AuthView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //Get.lazyPut<AuthController>(()=>AuthController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('AuthView'),
        centerTitle: true,
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Get.off(()=> LoginView());
              },
              child: Container(
                height: 30,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.amberAccent),
                child: const Center(
                  child: Text('Login'),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Get.off(()=> RegisterView());
              },
              child: Container(
                height: 30,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.amberAccent),
                child: const Center(
                  child: Text('Register'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
