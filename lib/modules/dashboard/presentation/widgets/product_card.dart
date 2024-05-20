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
                  product.brandIcon ?? "",
                  width: 24,
                  errorBuilder: (ctx, obj, trace) {
                    return Container();
                  },
                ),
                Expanded(
                  child: Center(
                    child: Image.network(
                      product.productThumbnail ?? "",
                      fit: BoxFit.contain,
                      errorBuilder: (ctx, obj, trace) {
                        return Container();
                      },
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
          product.name ?? "N/A",
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
              "${product.rating ?? "0.0"}",
              style: TextStyles.headLine700.copyWith(fontSize: 11),
            ),
            const SizedBox(
              width: 6,
            ),
            Text(
              "(${product.reviewCount ?? "0"} Reviews)",
              style: TextStyles.bodyText10,
            ),
          ],
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          "\$${product.price ?? "0.0"}",
          style: TextStyles.headLine700.copyWith(fontSize: 14),
        ),
      ],
    );
  }
}
