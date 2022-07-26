import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    Platform.isIOS
        ? const GetCupertinoApp()
        : GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: "Application",
            initialRoute: AppPages.INITIAL,
            getPages: AppPages.routes,
          ),
  );
}
