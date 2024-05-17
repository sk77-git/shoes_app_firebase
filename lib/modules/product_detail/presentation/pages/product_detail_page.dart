import 'package:flutter/material.dart';
import 'package:shoe_shop_firebase/core/constants/app_colors.dart';
import 'package:shoe_shop_firebase/core/theme/text_styles.dart';
import 'package:shoe_shop_firebase/modules/product_detail/presentation/widgets/detail_page_appbar.dart';
import 'package:shoe_shop_firebase/modules/product_detail/presentation/widgets/product_image_slider.dart';
import 'package:shoe_shop_firebase/modules/product_detail/presentation/widgets/review_tile.dart';
import 'package:shoe_shop_firebase/widgets/app_button.dart';
import 'package:shoe_shop_firebase/widgets/round_icon.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({super.key});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  List<String> sizeOptions = ["39", "39.5", "40", "41"];
  int _selectedSizeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const DetailPageAppbar(),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            const ProductImageSlider(),
            const SizedBox(
              height: 10,
            ),
            _nameAndRating(),
            const SizedBox(
              height: 20,
            ),
            _sizeSelection(),
            const SizedBox(
              height: 20,
            ),
            _description(),
            const SizedBox(
              height: 20,
            ),
            _reviewAndRatings(),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Price",
                  style: TextStyles.bodyText100,
                ),
                Text(
                  "\$235.00",
                  style: TextStyles.headLine600,
                ),
              ],
            ),
            AppButton(
              borderRadius: 50,
              label: "ADD TO CART",
              labelTextStyle: TextStyles.headLine300
                  .copyWith(color: AppColors.primaryNeutral),
            )
          ],
        ),
      ),
    );
  }

  Widget _nameAndRating() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Jordan 1 Retro High Tie Dye",
          style: TextStyles.headLine600,
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
              size: 12,
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
        )
      ],
    );
  }

  Widget _sizeSelection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Size",
          style: TextStyles.headLine400,
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 50,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: sizeOptions.length,
              itemBuilder: (ctx, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedSizeIndex = index;
                    });
                  },
                  child: Container(
                      margin: const EdgeInsets.only(right: 8),
                      child: RoundIcon(
                          radius: 20,
                          bgColor: _selectedSizeIndex == index
                              ? AppColors.primaryNeutral500
                              : Colors.transparent,
                          borderColor: AppColors.primaryNeutral200,
                          child: Text(
                            sizeOptions[index],
                            style: TextStyles.headLine300.copyWith(
                                color: _selectedSizeIndex == index
                                    ? AppColors.primaryNeutral
                                    : AppColors.primaryNeutral400),
                          ))),
                );
              }),
        ),
      ],
    );
  }

  Widget _description() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Description",
          style: TextStyles.headLine400,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "Engineered to crush any movement-based workout, these On sneakers enhance the label's original Cloud sneaker with cutting edge technologies for a pair. ",
          style: TextStyles.bodyText200,
        )
      ],
    );
  }

  Widget _reviewAndRatings() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Review (1045)",
          style: TextStyles.headLine400,
        ),
        const SizedBox(
          height: 10,
        ),
        ...List.generate(
            3,
            (index) => Container(
                margin: const EdgeInsets.only(bottom: 16),
                child: const ReviewTile()))
      ],
    );
  }
}
