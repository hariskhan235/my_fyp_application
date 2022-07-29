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
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        title: FittedBox(
            child: Text(
          'Recommended Degree Programs',
          style: Theme.of(context).textTheme.headline2,
        )),
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
            decoration: decoration(),
            child: Center(
              child: Text(
                'Computer Science',
                style: whiteTextStyle,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            width: 50,
            height: 50,
            decoration: decoration(),
            child: Center(
              child: Text(
                'BBA',
                style: whiteTextStyle,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            width: 50,
            height: 50,
            decoration: decoration(),
            child: Center(
              child: Text(
                'BS English',
                style: whiteTextStyle,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            width: 50,
            height: 50,
            decoration: decoration(),
            child: Center(
              child: Text(
                'BS Maths',
                style: whiteTextStyle,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            width: 50,
            height: 50,
            decoration: decoration(),
            child: Center(
              child: Text(
                'BS Urdu',
                style: whiteTextStyle,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            width: 50,
            height: 50,
            decoration: decoration(),
            child: Center(
              child: Text(
                'BS Islamiyat',
                style: whiteTextStyle,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            width: 50,
            height: 50,
            decoration: decoration(),
            child: Center(
              child: Text(
                'Engineering',
                style: whiteTextStyle,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            width: 50,
            height: 50,
            decoration: decoration(),
            child: Center(
              child: Text(
                'Health Sciences',
                style: whiteTextStyle,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            width: 50,
            height: 50,
            decoration: decoration(),
            child: Center(
              child: Text(
                'BBA',
                style: whiteTextStyle,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            width: 50,
            height: 50,
            decoration: decoration(),
            child: Center(
              child: Text(
                'BBA',
                style: whiteTextStyle,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            width: 50,
            height: 50,
            decoration: decoration(),
            child: Center(
              child: Text(
                'BBA',
                style: whiteTextStyle,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            width: 50,
            height: 50,
            decoration: decoration(),
            child: Center(
              child: Text(
                'BBA',
                style: whiteTextStyle,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            width: 50,
            height: 50,
            decoration: decoration(),
            child: Center(
              child: Text(
                'BBA',
                style: whiteTextStyle,
              ),
            ),
          )
        ],
      ),
    );
  }
}
