class Food {
  final String name;
  final String image;
  final double rating;
  final String review;
  final String deliveryTime;
  final String deliveryFee;
  final String minOrderPrice;
  final List<String> tags;
  final List<String> coupons;

  Food({
    required this.name,
    required this.image,
    required this.rating,
    required this.review,
    required this.deliveryTime,
    required this.deliveryFee,
    required this.minOrderPrice,
    required this.tags,
    required this.coupons,
  });
}
