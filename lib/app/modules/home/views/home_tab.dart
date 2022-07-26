import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:group_button/group_button.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:my_app/app/modules/home/controllers/home_controller.dart';

class HomeTab extends GetView<HomeController> {
  final groupButtonController = GroupButtonController();

  HomeTab({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('1 Gender'),
                  //Text(controller.gender.value),
                  TextField(
                    readOnly: true,
                    controller: controller.genderController,
                    decoration: const InputDecoration(
                      hintText: 'Please select Gender',
                    ),
                  ),
                  CustomRadioButton(
                    buttonLables: [controller.male, controller.female],
                    buttonValues: [
                      controller.male,
                      controller.female,
                    ],
                    radioButtonValue: (value) {
                      controller.selectGender(value.toString());
                      // Get.snackbar('Selected', controller.gender.value);
                    },
                    unSelectedColor: Colors.white,
                    selectedColor: Colors.amberAccent,
                    defaultSelected: null,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
