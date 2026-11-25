import 'package:flutter/material.dart';
import 'package:grocery_shop/models/cart_model.dart';
import 'package:grocery_shop/pages/intro_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(GroceryShopApp());
}

class GroceryShopApp extends StatelessWidget {
  const GroceryShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
      ),
    );
  }
}