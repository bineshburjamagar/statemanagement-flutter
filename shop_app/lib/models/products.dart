class Product {
  final String id;
  final String title;
  final String discription;
  final double price;
  final String imageUrl;
  bool? isFavourite;

  Product(
      {required this.id,
      required this.title,
      required this.discription,
      required this.price,
      required this.imageUrl,
      this.isFavourite});
}
