import 'package:flutter/material.dart';

class ProductItems extends StatelessWidget {
  const ProductItems(
      {Key? key,
      required this.id,
      required this.title,
      required this.imageUrl,
      required this.price})
      : super(key: key);

  final String id;
  final String title;
  final String imageUrl;
  final double price;

  @override
  Widget build(BuildContext context) {
    return GridTile(
      header: GridTileBar(
        title: Center(
          child: Text(title),
        ),
      ),
      footer: GridTileBar(
        backgroundColor: Colors.black54,
        leading: IconButton(
          icon: const Icon(Icons.favorite),
          onPressed: () {},
        ),
        title: Center(
          child: Text(price.toString()),
        ),
        trailing: IconButton(
          icon: const Icon(Icons.shopping_cart),
          onPressed: () {},
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6.0),
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
