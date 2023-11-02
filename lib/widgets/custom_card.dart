import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:home_store/mpdels/product_model.dart';

class CustomCard extends StatelessWidget {
  CustomCard({
    required this.product,
    super.key,
  });

  ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 0,
              offset: const Offset(10, 10),
            )
          ]),
          child: Card(
            elevation: 10,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title!.substring(0, 6),
                    style: const TextStyle(color: Colors.grey, fontSize: 19),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(r'$' '${product.price.toString()}'),
                      Icon(
                        FontAwesomeIcons.solidHeart,
                        color: Colors.red,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        // todo image over container
        Positioned(
          right: 32,
          bottom: 60,
          child: Image.asset(
            product.image!,
            height: 100,
            width: 100,
          ),
        ),
      ],
    );
  }
}
