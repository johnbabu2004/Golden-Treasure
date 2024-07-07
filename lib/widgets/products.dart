class Product {
  final String title;
  final String description;
  final String imagePath;
  final double? originalPrice;
  final double? discountedPrice;

  Product({
    required this.title,
    required this.description,
    required this.imagePath,
    required this.originalPrice,
    required this.discountedPrice,
  });
}