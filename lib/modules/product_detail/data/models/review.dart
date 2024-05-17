class Review {
  final int id;
  final String? reviewerName;
  final String? reviewerImg;
  final String? reviewDate;
  final double? reviewStars;
  final double? reviewComment;

  Review(
      {required this.id,
      this.reviewerName,
      this.reviewerImg,
      this.reviewDate,
      this.reviewStars,
      this.reviewComment});
}
