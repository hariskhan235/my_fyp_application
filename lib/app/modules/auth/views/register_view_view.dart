import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:my_app/app/modules/auth/controllers/auth_controller.dart';

class RegisterView extends GetView<AuthController> {
  final formKey = GlobalKey<FormState>();
  RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //Get.put(AuthController());

    // final emailController = TextEditingController();
    // final passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('RegisterView'),
        centerTitle: true,
      ),
      body: Obx(()=> controller.isLoading.value == true
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : SafeArea(
              child: SingleChildScrollView(
                child: Center(
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 60),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            controller: controller.emailController,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.email),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              hintText: 'Enter Your Email Address',
                              //label: const Text('Email')
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter email';
                              }
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: TextFormField(
                            keyboardType: TextInputType.visiblePassword,
                            controller: controller.passwordController,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.password),
                              suffixIcon:
                                  const Icon(Icons.remove_red_eye_rounded),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              hintText: 'Enter Your Password',
                              //label: const Text('Email')
                            ),
                            validator: (value) {
                              if (value!.isEmpty && value.length < 8) {
                                return 'Please enter Password';
                              }
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 40, right: 40),
                          decoration: BoxDecoration(
                              //border: Border.all(color: Colors.amberAccent)
                              borderRadius: BorderRadius.circular(50)),
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                formKey.currentState!.save();
                                controller.signUpUser(
                                    context,
                                    controller.emailController.text,
                                    controller.passwordController.text);
                              }
                            },
                            child: const Text('Register'),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),)
    );
  }
}
