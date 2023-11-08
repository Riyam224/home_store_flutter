import 'package:flutter/material.dart';

class UpdateProduct extends StatelessWidget {
  const UpdateProduct({super.key});
  static String id = 'update product';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const  Text(
          'update product',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
    );
  }
}
