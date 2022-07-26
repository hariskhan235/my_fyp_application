import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/app/modules/home/controllers/home_controller.dart';
import 'package:my_app/app/modules/home/views/home_tab.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: Center(
              child: IndexedStack(
                index: controller.selectedIndex.value,
                children: [
                  HomeTab(),
                  const Text('Index 1 Settings'),
                  const Text('Index 2 Profile'),
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: 'Settings'),
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
