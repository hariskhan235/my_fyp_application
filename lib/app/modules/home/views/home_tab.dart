import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:group_button/group_button.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:my_app/app/modules/home/controllers/home_controller.dart';
import 'package:my_app/utils/utils.dart';

class HomeTab extends GetView<HomeController> {
  final groupButtonController = GroupButtonController();

  HomeTab({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Form',
          style: Theme.of(context).textTheme.headline2,
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            controller.gotoProfile();
          }, icon: const Icon(Icons.person))
        ],
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
                  TextField(
                    readOnly: true,
                    controller: controller.genderController,
                    decoration: InputDecoration(
                        hintText: 'Please select Gender',
                        hintStyle: Theme.of(context).textTheme.headline6),
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  CustomRadioButton(
                    buttonLables: [male, female],
                    buttonValues: [
                      male,
                      female,
                    ],
                    radioButtonValue: (value) {
                      controller.selectGender(value.toString());
                      // Get.snackbar('Selected', controller.gender.value);
                    },
                    unSelectedColor: Colors.white,
                    selectedColor: const Color(0xFF4267B2),
                    defaultSelected: null,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'SSC Marks Percentage',
                        style: MediaQuery.of(context).size.width == 320
                            ? Theme.of(context).textTheme.bodyText1
                            : Theme.of(context).textTheme.headline3,
                      ),
                      Container(
                        height: 30,
                        //margin: const EdgeInsets.only(top: 10),
                        padding: const EdgeInsets.only(left: 5),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color(0xFF4267B2),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: controller.sscMarks,
                            icon: Icon(
                              Icons.arrow_downward,
                              color: Theme.of(context).iconTheme.color,
                            ),
                            elevation: 16,
                            style: Theme.of(context).textTheme.headline3,
                            onChanged: (String? newValue) {
                              controller.onSscMarksChange(newValue.toString());
                            },
                            items: <String>[
                              '33%-39%',
                              '40%-49%',
                              '50%-59%',
                              '60%-69%',
                              '70%-79%',
                              '80% or Above'
                            ].map<DropdownMenuItem<String>>(
                              (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              },
                            ).toList(),
                            dropdownColor: const Color(0xFF4267B2),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'HSSC Marks Percentage',
                        style: MediaQuery.of(context).size.width == 320
                            ? Theme.of(context).textTheme.bodyText1
                            : Theme.of(context).textTheme.headline3,
                      ),
                      Container(
                        height: 30,
                        padding: const EdgeInsets.only(left: 5),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color(0xFF4267B2),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: controller.hsscMarks,
                            icon: Icon(
                              Icons.arrow_downward,
                              color: Theme.of(context).iconTheme.color,
                            ),
                            elevation: 16,
                            style: Theme.of(context).textTheme.headline3,
                            underline: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 2,
                              color: Colors.deepPurpleAccent,
                            ),
                            onChanged: (String? newValue) {
                              controller.onHSscMarksChange(newValue.toString());
                            },
                            items: <String>[
                              '33%-39%',
                              '40%-49%',
                              '50%-59%',
                              '60%-69%',
                              '70%-79%',
                              '80% or Above'
                            ].map<DropdownMenuItem<String>>(
                              (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              },
                            ).toList(),
                            dropdownColor:
                                Theme.of(context).appBarTheme.backgroundColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('SSC Major Subject',
                          style: MediaQuery.of(context).size.width == 320
                              ? Theme.of(context).textTheme.bodyText1
                              : Theme.of(context).textTheme.headline3),
                      Container(
                        height: 30,
                        padding: const EdgeInsets.only(left: 5),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color(0xFF4267B2),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: controller.sscMajorSubject,
                            icon: Icon(
                              Icons.arrow_downward,
                              color: Theme.of(context).iconTheme.color,
                            ),
                            elevation: 16,
                            style: Theme.of(context).textTheme.headline3,
                            underline: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 2,
                              color: Colors.deepPurpleAccent,
                            ),
                            onChanged: (String? newValue) {
                              controller
                                  .onSscSubjectChange(newValue.toString());
                            },
                            items: <String>[
                              'Science',
                              'Computer Science',
                              'Arts',
                            ].map<DropdownMenuItem<String>>(
                              (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              },
                            ).toList(),
                            dropdownColor:
                                Theme.of(context).appBarTheme.backgroundColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'HSSC Major Subject',
                        style: MediaQuery.of(context).size.width == 320
                            ? Theme.of(context).textTheme.bodyText1
                            : Theme.of(context).textTheme.headline3,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        height: 30,
                        padding: const EdgeInsets.only(left: 5),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color(0xFF4267B2),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: controller.hsscMajorSubject,
                            icon: Icon(
                              Icons.arrow_downward,
                              color: Theme.of(context).iconTheme.color,
                            ),
                            elevation: 16,
                            style: Theme.of(context).textTheme.headline3,
                            underline: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 2,
                              color: Colors.deepPurpleAccent,
                            ),
                            onChanged: (String? newValue) {
                              controller
                                  .onHSscSubjectChange(newValue.toString());
                            },
                            items: <String>[
                              'Pre-Medical',
                              'Pre-Engineering',
                              'Computer Science',
                            ].map<DropdownMenuItem<String>>(
                              (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              },
                            ).toList(),
                            dropdownColor:
                                Theme.of(context).appBarTheme.backgroundColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      print(MediaQuery.of(context).size.width);
                      Get.dialog(
                        AlertDialog(
                          title: const Text('Degree Program'),
                          content: const Text('Best Suits Your Record'),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Get.back();
                                },
                                child: const Text('Ok'))
                          ],
                        ),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      decoration: const BoxDecoration(
                        color: Color(0xFF4267B2),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: 30,
                      child: Center(
                        child: Text(
                          'Check Now',
                          style: Theme.of(context).textTheme.headline2,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
