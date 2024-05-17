import 'package:flutter/material.dart';
import 'package:shoe_shop_firebase/core/constants/app_colors.dart';
import 'package:shoe_shop_firebase/core/theme/app_decorations.dart';
import 'package:shoe_shop_firebase/core/theme/text_styles.dart';
import 'package:shoe_shop_firebase/modules/dashboard/data/models/product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: AppDecorations.imageBgDecoration(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  "https://freepngtransparent.com/wp-content/uploads/2023/03/nike-logo-png-157.png",
                  width: 24,
                ),
                Expanded(
                  child: Center(
                    child: Image.network(
                      "https://www.pngall.com/wp-content/uploads/14/Jordan-Shoes-PNG-HD-Image.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "Jordan 1 Retro High Tie Dye",
          style: TextStyles.bodyText100,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: 6,
        ),
        Row(
          children: [
            const Icon(
              Icons.star,
              color: AppColors.starColor,
              size: 11,
            ),
            const SizedBox(
              width: 6,
            ),
            Text(
              "4.5",
              style: TextStyles.headLine700.copyWith(fontSize: 11),
            ),
            const SizedBox(
              width: 6,
            ),
            Text(
              "(1045 Reviews)",
              style: TextStyles.bodyText10,
            ),
          ],
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          "\$235,00",
          style: TextStyles.headLine700.copyWith(fontSize: 14),
        ),
      ],
    );
  }
}
