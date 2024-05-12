import 'dart:developer';

import 'package:shoe_shop_firebase/widgets/snackbar.dart';
import 'package:url_launcher/url_launcher.dart';

class Intents {
  static Future<void> launchCall(String phoneNumber) async {
    if (phoneNumber.isEmpty) {
      log("Intents:Invalid phone number");
      SnackBarUtil.showSnackBar(isError: true, message: "Invalid phone number");
      return;
    }
    String url = 'tel:$phoneNumber';
    if (await canLaunchUrl(Uri.parse(url))) {
      try {
        launchUrl(Uri.parse(url));
      } catch (e) {
        SnackBarUtil.showSnackBar(
            isError: true, message: "Could not launch a phone call");
      }
    }
  }

  static Future<void> launchEmail(
    String recipient,
  ) async {
    if (recipient.isEmpty) {
      SnackBarUtil.showSnackBar(
          isError: true, message: "Invalid email address");
      return;
    }
    String email = Uri.encodeComponent(recipient);
    Uri mail = Uri.parse("mailto:$email");
    if (await launchUrl(mail)) {
    } else {
      SnackBarUtil.showSnackBar(
          isError: true, message: "Could not launch email app");
    }
  }
}
