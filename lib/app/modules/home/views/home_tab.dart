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
                    selectedColor: Colors.amberAccent,
                    defaultSelected: null,
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'SSC Marks Percentage',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      DropdownButton<String>(
                        value: controller.sscMarks,
                        //icon: const Icon(Icons.arrow_downward),
                        //elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        // underline: Container(
                        //   width: MediaQuery.of(context).size.width,
                        //   height: 2,
                        //   color: Colors.deepPurpleAccent,
                        // ),
                        onChanged: (String? newValue) {
                          controller.onChange(newValue.toString());
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
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'HSSC Marks Percentage',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      DropdownButton<String>(
                        value: controller.sscMarks,
                        //icon: const Icon(Icons.arrow_downward),
                        //elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        // underline: Container(
                        //   width: MediaQuery.of(context).size.width,
                        //   height: 2,
                        //   color: Colors.deepPurpleAccent,
                        // ),
                        onChanged: (String? newValue) {
                          controller.onChange(newValue.toString());
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
                      ),
                    ],
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
