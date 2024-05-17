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

  static TextStyle get headLine700 {
    return const TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w700,
      color: AppColors.primaryNeutral500,
    );
  }

  static TextStyle get headLine600 {
    return const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: AppColors.primaryNeutral500,
    );
  }

  static TextStyle get headLine400 {
    return const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: AppColors.primaryNeutral500,
    );
  }

  static TextStyle get headLine300 {
    return const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w700,
      color: AppColors.primaryNeutral400,
    );
  }

  static TextStyle get bodyText100 {
    return const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: AppColors.primaryNeutral500,
    );
  }

  static TextStyle get bodyText200 {
    return const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColors.primaryNeutral400,
    );
  }

  static TextStyle get bodyText10 {
    return const TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w400,
      color: AppColors.primaryNeutral300,
    );
  }
}
