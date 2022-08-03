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
          ),
        ),
        centerTitle: true,
      ),
      body: GridView(
        scrollDirection: Axis.vertical,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          Column(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                width: 120,
                height: 120,
                decoration: decoration(),
              ),
              const Text('Computer Science')
            ],
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                width: 120,
                height: 120,
                decoration: decoration(),
              ),
              const Text('Computer Science')
            ],
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                width: 120,
                height: 120,
                decoration: decoration(),
              ),
              const Text('Computer Science')
            ],
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                width: 120,
                height: 120,
                decoration: decoration(),
              ),
              const Text('Computer Science')
            ],
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                width: 120,
                height: 120,
                decoration: decoration(),
              ),
              const Text('Computer Science')
            ],
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                width: 120,
                height: 120,
                decoration: decoration(),
              ),
              const Text('Computer Science')
            ],
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                width: 120,
                height: 120,
                decoration: decoration(),
              ),
              const Text('Computer Science')
            ],
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                width: 120,
                height: 120,
                decoration: decoration(),
              ),
              const Text('Computer Science')
            ],
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                width: 120,
                height: 120,
                decoration: decoration(),
              ),
              const Text('Computer Science')
            ],
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                width: 120,
                height: 120,
                decoration: decoration(),
              ),
              const Text('Computer Science')
            ],
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                width: 120,
                height: 120,
                decoration: decoration(),
              ),
              const Text('Computer Science')
            ],
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                width: 120,
                height: 120,
                decoration: decoration(),
              ),
              const Text('Computer Science')
            ],
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                width: 120,
                height: 120,
                decoration: decoration(),
              ),
              const Text('Computer Science')
            ],
          ),
        ],
      ),
    );
  }
}
