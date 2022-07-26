import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/app/modules/home/controllers/home_controller.dart';
import 'package:my_app/app/modules/home/views/degreeProgramsTab.dart';
import 'package:my_app/app/modules/home/views/home_tab.dart';
import 'package:my_app/app/modules/home/views/profile_tab.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  String dropdownValue = 'one';
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          body: SafeArea(
            child: Center(
              child: IndexedStack(
                index: controller.selectedIndex.value,
                children: [
                  HomeTab(),
                  const DegreeProgramsTab(),
                  const ProfileTab(),
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            iconSize: 25,
            selectedFontSize: 13,
            unselectedFontSize: 10,
            selectedItemColor:Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
            backgroundColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: 'Degree Programs',
                  tooltip: 'Degree Programs'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Profile'),
            ],
            onTap: controller.ontap,
            currentIndex: controller.selectedIndex.value,
          ),
        );
      },
    );
  }
}




// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';

// import 'package:get/get.dart';

// import '../controllers/home_controller.dart';

// class HomeView extends GetView<HomeController> {
//   const HomeView({Key? key}) : super(key: key);

//   void onTap(int index) {
//     //controller.ontap(controller.selectedIndex);
//     controller.selectedIndex.value = index;
//   }

//   // static List<Widget> items = <Widget>[
//   //   Text('Index 0 Home'),
//   //   Text('Index 1 Settings'),
//   //   Text('Index 2 Profile'),
//   // ];

//   // final Widget items = IndexedStack(
//   //   index: controller.selectedIndex.value;
//   // );
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('HomeView'),
//         centerTitle: true,
//       ),
//       body: Center(child: items.elementAt(controller.selectedIndex.value)),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.settings),
//             label: 'Settings',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Profile',
//           ),
//         ],
//         currentIndex: controller.selectedIndex.value,
//         onTap: onTap,
//       ),
//     );
//   }
// }
