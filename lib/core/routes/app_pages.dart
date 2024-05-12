import 'package:get/get.dart';
import 'package:shoe_shop_firebase/modules/dashboard/presentation/bindings/dashboard_binding.dart';
import 'package:shoe_shop_firebase/modules/dashboard/presentation/pages/dashboard_page.dart';
import 'package:shoe_shop_firebase/modules/splash/presentation/pages/splash_page.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;
  static const DASHBOARD = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashPage(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => const DashboardPage(),
      binding: DashboardBinding(),
    ),
  ];
}
