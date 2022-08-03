import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:my_app/utils/utils.dart';

class HomeController extends GetxController {
  final genderController = TextEditingController();
  var selectedIndex = 0.obs;
  var gender = ''.obs;
  var sscMarks = '33%-39%';
  var hsscMarks = '33%-39%';

  var sscMajorSubject = 'Science';
  var hsscMajorSubject = 'Pre-Medical';

  final hobbies = <Map>[
    {"title": "Photography", "isCheck": false},
    {"title": "Arts and Crafts", "isCheck": false},
    {"title": "Cooking", "isCheck": false},
    {'title': 'Traveling', 'isCheck': false},
    {'title': 'Computer Technology', 'isCheck': false},
    {'title': 'Reading Books', 'isCheck': false},
    {'title': 'Teaching', 'isCheck': false}
  ].obs;
  final subjectsSSC = <Map>[
    {"title": "Urdu", "isCheck": false},
    {"title": "English", "isCheck": false},
    {"title": "Pak Studies", "isCheck": false},
    {'title': 'Islamiat', 'isCheck': false},
    {'title': 'Mathematics', 'isCheck': false},
    {'title': 'Chemistry', 'isCheck': false},
    {'title': 'Physics', 'isCheck': false},
    {'title': 'Biology', 'isCheck': false}
  ].obs;

  final subjectsHSSC = <Map>[
    {"title": "Urdu", "isCheck": false},
    {"title": "English", "isCheck": false},
    {"title": "Pak Studies", "isCheck": false},
    {'title': 'Islamiat', 'isCheck': false},
    {'title': 'Mathematics', 'isCheck': false},
    {'title': 'Chemistry', 'isCheck': false},
    {'title': 'Physics', 'isCheck': false},
    {'title': 'Computer Science', 'isCheck': false},
    {'title': 'Biology', 'isCheck': false}
  ].obs;

  final count = 0.obs;

  onSscMarksChange(String value) {
    sscMarks = value;
    update();
  }

  onHSscMarksChange(String value) {
    hsscMarks = value;
    update();
  }

  onSscSubjectChange(String value) {
    sscMajorSubject = value;
    update();
  }

  onHSscSubjectChange(String value) {
    hsscMajorSubject = value;
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

  void onHobbiesChanged(int index, bool value) {
    hobbies[index]['isCheck'] = value;
    update();
  }

  onSScInteredtedChanged(int index, bool value) {
    subjectsSSC[index]['isCheck'] = value;
    update();
  }

  onHSScInteredtedChanged(int index, bool value) {
    subjectsHSSC[index]['isCheck'] = value;
    update();
  }

  void gotoProfile(index) {
    selectedIndex.value = index;
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
