import 'package:flutter/material.dart';
import 'package:get/get.dart';

///This class is used to show show custom snackbar messages
class SnackBarUtil {
  static void showSnackBar(
          {required String message,
          required bool isError,
          int durationInMs = 3000}) =>
      Get.snackbar(
        "",
        "",
        instantInit: true,
        margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        titleText: Container(),
        messageText: Center(
          child: Text(
            message,
            textAlign: TextAlign.start,
            style: TextStyle(
              color:
                  isError ? const Color(0xFFFFC1C1) : const Color(0xFF08D970),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        snackStyle: SnackStyle.FLOATING,
        duration: Duration(milliseconds: durationInMs),
        animationDuration: const Duration(milliseconds: 400),
        borderRadius: 4,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor:
            isError ? const Color(0xFFFF3535) : const Color(0xFF04723B),
      );
}
