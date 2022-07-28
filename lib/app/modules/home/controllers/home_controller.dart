
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:my_app/utils/utils.dart';

class HomeController extends GetxController {

  final genderController = TextEditingController();
  var selectedIndex = 0.obs;
  var gender = ''.obs;
  var sscMarks = '33%-39%';

  final count = 0.obs;

  onChange(String value){
    sscMarks = value;
    update();
  }
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
