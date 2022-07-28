import 'package:flutter/material.dart';
import 'package:shop_app/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shop App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Raleway',
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.brown)
              .copyWith(secondary: Colors.pink)),
      home: const MyHomePage(),
    );
  }
}
