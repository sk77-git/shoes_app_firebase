import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:shoe_shop_firebase/core/constants/app_colors.dart';
import 'package:shoe_shop_firebase/core/theme/app_decorations.dart';
import 'package:shoe_shop_firebase/widgets/round_icon.dart';

class ProductImageSlider extends StatefulWidget {
  const ProductImageSlider({super.key});

  @override
  State<ProductImageSlider> createState() => _ProductImageSliderState();
}

class _ProductImageSliderState extends State<ProductImageSlider> {
  List<String> images = [
    "https://www.pngall.com/wp-content/uploads/14/Jordan-Shoes-PNG-HD-Image.png",
    "https://www.pngall.com/wp-content/uploads/14/Jordan-Shoes-PNG-HD-Image.png",
    "https://www.pngall.com/wp-content/uploads/14/Jordan-Shoes-PNG-HD-Image.png"
  ];
  final CarouselController carouselController = CarouselController();
  int _carouselIndex = 0;
  List<Color> colorOptions = [
    const Color(0xFFFFFFFF),
    const Color(0xFF101010),
    const Color(0xFF648B8B),
    const Color(0xFF2952CC),
  ];
  int _selectedColorIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: AppDecorations.imageBgDecoration(),
      child: Column(
        children: [
          CarouselSlider(
            carouselController: carouselController,
            options: CarouselOptions(
                autoPlay: true,
                viewportFraction: 0.9,
                onPageChanged: (index, reason) {
                  setState(() {
                    _carouselIndex = index;
                  });
                }),
            items: List.generate(
                images.length,
                (index) => Image.network(
                      images[index],
                      errorBuilder: (buildContext, object, stackTrace) {
                        return Container();
                      },
                    )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DotsIndicator(
                onTap: (index) {
                  carouselController.animateToPage(index);
                },
                dotsCount: images.length,
                position: _carouselIndex,
                decorator: const DotsDecorator(
                  size: Size(7, 7),
                  color: AppColors.primaryNeutral300,
                  activeColor: AppColors.primaryNeutral500,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.1),
                      blurRadius: 20,
                      spreadRadius: 0,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                height: 40,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: colorOptions.length,
                    itemBuilder: (ctx, index) {
                      return Container(
                          margin: const EdgeInsets.only(right: 8),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectedColorIndex = index;
                              });
                            },
                            child: RoundIcon(
                              radius: 10,
                              borderColor: Colors.grey,
                              bgColor: colorOptions[index],
                              child: _selectedColorIndex == index
                                  ? const Icon(
                                      Icons.check,
                                      size: 9,
                                      color: Colors.grey,
                                    )
                                  : Container(),
                            ),
                          ));
                    }),
              )
            ],
          )
        ],
      ),
    );
  }
}
