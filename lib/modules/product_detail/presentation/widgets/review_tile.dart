import 'package:flutter/material.dart';
import 'package:shoe_shop_firebase/core/constants/app_colors.dart';
import 'package:shoe_shop_firebase/core/theme/text_styles.dart';
import 'package:shoe_shop_firebase/widgets/round_image.dart';

class ReviewTile extends StatelessWidget {
  const ReviewTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const RoundImage(
            borderColor: Colors.transparent,
            radius: 20,
            imageUrl:
                "https://s3-alpha-sig.figma.com/img/dfa4/a2a9/5c53ee3c5369fe03074fa1a2d9998ef7?Expires=1716768000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=OZe5dlKu0k2tdyzMHXbfeekR4ombsFiT22kRFxZlaYyHA3E5jQSLujbcDnDDTnA6Azdp2XG~M5-ZpHTtMc-bCGl8AhPMrotjfwBYuqoeMq545HhRxWiaLNEZCdvCVme6Qos6SIIkjos6y8l97yFmbJ6BJcWD5lIvQ2aGgVeG5iKB9Bako00ZDux8kFOzTmTrSqGdtop1szbDzZaBd9fhRLl39RzRe9rxsgfDo7NbGWQ3toKH4TglA8TKulP2GFe1~CuGlkadnqkTikdA0EllsDd-g~J3hu0j0eh7iTT7oSHSufZlLvoHtQMi3mF8u37YMw21R~NfwRsgHp93DoVRYA__"),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Nolan Carder",
                    style: TextStyles.headLine300,
                  ),
                  const Spacer(),
                  Text(
                    "Today",
                    style: TextStyles.bodyText100,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
                child: ListView.builder(
                    itemCount: 4,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (ctx, index) {
                      return const Icon(
                        Icons.star,
                        color: AppColors.starColor,
                        size: 12,
                      );
                    }),
              ),
              Text(
                "Perfect for keeping your feet dry and warm in damp conditions.",
                style: TextStyles.bodyText100,
              )
            ],
          ),
        ),
      ],
    );
  }
}
