import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoe_shop_firebase/core/constants/app_strings.dart';
import 'package:shoe_shop_firebase/core/routes/app_pages.dart';

class ShoesApp extends StatefulWidget {
  const ShoesApp({super.key});

  @override
  State<ShoesApp> createState() => _ShoesAppState();
}

class _ShoesAppState extends State<ShoesApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
