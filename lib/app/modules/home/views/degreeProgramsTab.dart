import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/app/modules/home/controllers/home_controller.dart';
import 'package:my_app/utils/utils.dart';

class DegreeProgramsTab extends GetView<HomeController> {
  const DegreeProgramsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const FittedBox(child: Text('Recommended Degree Programs')),
        centerTitle: true,
      ),
      body: GridView(
        scrollDirection: Axis.vertical,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            width: 50,
            height: 50,
            decoration: decoration,
            child: const Center(
              child: Text('Computer Science'),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            width: 50,
            height: 50,
            decoration: decoration,
            child: const Center(
              child: Text('BBA'),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            width: 50,
            height: 50,
            decoration: decoration,
            child: const Center(
              child: Text('BS English'),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            width: 50,
            height: 50,
            decoration: decoration,
            child: const Center(
              child: Text('BS Maths'),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            width: 50,
            height: 50,
            decoration: decoration,
            child: const Center(
              child: Text('BS Urdu'),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            width: 50,
            height: 50,
            decoration: decoration,
            child: const Center(
              child: Text('BS Islamiyat'),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            width: 50,
            height: 50,
            decoration: decoration,
            child: const Center(
              child: Text('Engineering'),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            width: 50,
            height: 50,
            decoration: decoration,
            child: const Center(
              child: Text('Health Sciences'),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            width: 50,
            height: 50,
            decoration: decoration,
            child: const Center(
              child: Text('BBA'),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            width: 50,
            height: 50,
            decoration: decoration,
            child: const Center(
              child: Text('BBA'),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            width: 50,
            height: 50,
            decoration: decoration,
            child: const Center(
              child: Text('BBA'),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            width: 50,
            height: 50,
            decoration: decoration,
            child: const Center(
              child: Text('BBA'),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            width: 50,
            height: 50,
            decoration: decoration,
            child: const Center(
              child: Text('BBA'),
            ),
          )
        ],
      ),
    );
  }
}
