class Product {
  int id;
  String? brandIcon;
  String? productThumbnail;
  String? name;
  double? rating;
  int? reviewCount;
  double? price;

  Product({
    required this.id,
    this.brandIcon,
    this.productThumbnail,
    this.name,
    this.rating,
    this.reviewCount,
    this.price,
  });
}
