import 'package:flutter/cupertino.dart';
import 'package:shoe_shop_firebase/core/constants/app_colors.dart';

///This will hold all the decorations used most frequently
class AppDecorations {
  static BoxDecoration imageBgDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: AppColors.productCardBgColor,
    );
  }
}
