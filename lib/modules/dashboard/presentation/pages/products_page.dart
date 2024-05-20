import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoe_shop_firebase/modules/dashboard/data/models/product.dart';
import 'package:shoe_shop_firebase/modules/dashboard/presentation/widgets/product_card.dart';
import 'package:shoe_shop_firebase/modules/product_detail/presentation/pages/product_detail_page.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key, required this.categoryId});

  final int categoryId;

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  void initState() {
    super.initState();
    //TODO: call the controller's getProduct(widget.categoryId)
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance.collection("products").snapshots(),
      builder: (ctx, result) {
        log(result.error.toString());
        if (result.connectionState == ConnectionState.active) {
          if (result.hasData) {
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                childAspectRatio: 0.8,
              ),
              itemCount: result.data?.docs.length ?? 0,
              itemBuilder: (BuildContext context, int index) {
                var item = result.data!.docs[index];
                return GestureDetector(
                  onTap: () {
                    Get.to(() => const ProductDetailPage());
                  },
                  child: ProductCard(
                    product: Product(
                      id: index,
                      name: item["name"],
                      brandIcon: item["brand_icon"],
                      price: item["price"],
                      productThumbnail: item["product_thumbnail"],
                      rating: item["rating"],
                      reviewCount: item["review_count"],
                    ),
                  ),
                );
              },
            );
          } else {
            return Center(
              child: Text(result.error.toString()),
            );
          }
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
