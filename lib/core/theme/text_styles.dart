import 'package:flutter/cupertino.dart';
import 'package:shoe_shop_firebase/core/constants/app_colors.dart';

///This will hold all the decorations used most frequently
class TextStyles {
  //default text style
  static TextStyle get textStyle {
    return const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColors.textColor,
    );
  }
}
