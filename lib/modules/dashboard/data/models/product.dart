class Product {
  int id;
  String? brandIcon;
  String? productThumbnail;
  String? name;
  num? rating;
  num? reviewCount;
  num? price;

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
