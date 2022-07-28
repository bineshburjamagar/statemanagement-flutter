import 'package:flutter/material.dart';

class ProductItems extends StatelessWidget {
  const ProductItems(
      {Key? key, required this.id, required this.title, required this.imageUrl})
      : super(key: key);

  final String id;
  final String title;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return GridTile(child: Image.network(imageUrl));
  }
}
