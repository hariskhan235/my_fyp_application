import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/app/theme/my_app_theme.dart';
import 'app/routes/app_pages.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    Platform.isIOS
        ? const GetCupertinoApp()
        : GetMaterialApp(
            theme: MyAppTheme.light(),
            darkTheme: MyAppTheme.dark(),
            debugShowCheckedModeBanner: false,
            title: "Application",
            initialRoute: AppPages.INITIAL,
            getPages: AppPages.routes,
          ),
  );
}
