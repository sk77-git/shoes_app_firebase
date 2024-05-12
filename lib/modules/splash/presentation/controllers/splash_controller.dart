import 'package:get/get.dart';
import 'package:shoe_shop_firebase/core/constants/app_constants.dart';
import 'package:shoe_shop_firebase/core/storage/app_stoarge.dart';
import 'package:shoe_shop_firebase/modules/auth/presentation/pages/login_page.dart';
import 'package:shoe_shop_firebase/modules/dashboard/presentation/pages/dashboard_page.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    splash();
  }

  ///This checks if user is logged in or not and redirects accordingly
  void splash() {
    Future.delayed(Duration(seconds: AppConstants.splashDuration), () {
      if (AppStorage.getUserToken().isNotEmpty) {
        Get.offAll(() => const DashboardPage());
      } else {
        Get.offAll(() => const LoginPage());
      }
    });
  }
}
