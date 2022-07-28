import 'package:flutter/material.dart';
import 'package:shop_app/models/products.dart';
import 'package:shop_app/widgets/product_items.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Product> loadedProduct = [
    Product(
        id: "1",
        title: "Nike Shoe",
        discription: "discription",
        price: 20000,
        imageUrl:
            "https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"),
    Product(
        id: "2",
        title: "Headphone",
        discription: "discription",
        price: 3000,
        imageUrl:
            "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"),
    Product(
        id: "3",
        title: "Watch",
        discription: "discription",
        price: 9000,
        imageUrl:
            "https://images.unsplash.com/photo-1523275335684-37898b6baf30?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1099&q=80"),
    Product(
        id: "4",
        title: "Perfume",
        discription: "discription",
        price: 5000,
        imageUrl:
            "https://images.unsplash.com/photo-1585386959984-a4155224a1ad?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SHOP APP'),
      ),
      body: GridView.builder(
          padding: const EdgeInsets.all(10.0),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
          itemCount: loadedProduct.length,
          itemBuilder: (context, index) => ProductItems(
              id: loadedProduct[index].id,
              title: loadedProduct[index].title,
              imageUrl: loadedProduct[index].imageUrl)),
    );
  }
}
