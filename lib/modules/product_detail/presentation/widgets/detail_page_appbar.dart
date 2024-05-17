import 'package:flutter/material.dart';
import 'package:shoe_shop_firebase/core/constants/app_images.dart';
import 'package:shoe_shop_firebase/core/theme/text_styles.dart';

class DetailPageAppbar extends StatelessWidget {
  const DetailPageAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "",
          style: TextStyles.headLine700,
        ),
        InkWell(
          borderRadius: BorderRadius.circular(4),
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.all(4),
            child: Image.asset(
              AppImages.iconCart,
              width: 24,
            ),
          ),
        ),
      ],
    );
  }
}
