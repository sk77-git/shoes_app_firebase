import 'package:flutter/material.dart';
import 'package:shoe_shop_firebase/core/constants/app_colors.dart';

class RoundImage extends StatelessWidget {
  final String imageUrl;
  final String placeHolderText;
  final TextStyle? placeHolderTextStyle;
  final double radius;
  final double borderWidth;
  final Color borderColor;

  const RoundImage({
    super.key,
    required this.imageUrl,
    this.placeHolderText = "N/A",
    this.placeHolderTextStyle = const TextStyle(color: AppColors.primary),
    this.radius = 20,
    this.borderWidth = 2.0,
    this.borderColor = AppColors.primary,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 2 * (radius + borderWidth),
      height: 2 * (radius + borderWidth),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: borderWidth == 0
            ? null
            : Border.all(
                color: borderColor,
                width: borderWidth,
              ),
      ),
      child: ClipOval(
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return CircleAvatar(
              backgroundColor: const Color(0xFFF3F1F1),
              child: Text(
                placeHolderText,
                style: placeHolderTextStyle,
              ),
            );
          },
        ),
      ),
    );
  }
}
