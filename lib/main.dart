import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/app/theme/my_app_theme.dart';
import 'app/routes/app_pages.dart';

void main() {
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
