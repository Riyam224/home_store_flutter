import 'package:flutter/material.dart';
import 'package:home_store/widgets/custom_button.dart';
import 'package:home_store/widgets/custom_text_field.dart';

class UpdateProduct extends StatelessWidget {
  const UpdateProduct({super.key});
  static String id = 'update product';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'update product',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomFormTextField(
                hintText: 'update product ',
              ),
              const SizedBox(
                height: 10,
              ),
              CustomFormTextField(
                hintText: 'update product ',
              ),
              SizedBox(
                height: 10,
              ),
              CustomFormTextField(
                hintText: 'description ',
              ),
              SizedBox(
                height: 10,
              ),
              CustomFormTextField(
                hintText: 'price',
              ),
              SizedBox(
                height: 50,
              ),
              CustomButton(text: 'update'),
            ],
          ),
        ));
  }
}
