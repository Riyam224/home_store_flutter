import 'package:flutter/material.dart';
import 'package:home_store/pages/home_page.dart';
import 'package:home_store/pages/update_product_page.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomePage.id: (context) => HomePage(),
        UpdateProduct.id: (context) => UpdateProduct(),
      },
      initialRoute: UpdateProduct.id,
    );
  }
}
