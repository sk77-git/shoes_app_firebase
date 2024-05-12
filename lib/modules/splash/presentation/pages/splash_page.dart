import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoe_shop_firebase/core/constants/app_strings.dart';
import 'package:shoe_shop_firebase/modules/splash/presentation/controllers/splash_controller.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final SplashController controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(AppStrings.appName),
            ],
          ),
        ),
      ),
    );
  }
}
