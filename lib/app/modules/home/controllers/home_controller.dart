import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final genderController = TextEditingController();
  var selectedIndex = 0.obs;
  var gender = ''.obs;
  var male = 'Male';
  var female = 'Female';

  final count = 0.obs;
  void ontap(int index) {
    selectedIndex.value = index;
    update();
  }

  void selectGender(String val) {
    if (val == 'Male') {
      gender.value = male;
      // male = genderController.text;
      //update();
    } else {
      gender.value = female;
      //female = genderController.text;
    }
    genderController.text = gender.value;
    update();
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void dispose() {
    genderController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  void increment() => count.value++;
}
