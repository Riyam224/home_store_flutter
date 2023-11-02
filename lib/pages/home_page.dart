import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:home_store/mpdels/product_model.dart';
import 'package:home_store/services/get_all_products_service.dart';
import 'package:home_store/widgets/custom_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.bagShopping,
              color: Color.fromARGB(255, 224, 139, 11),
            ),
          ),
        ],
        centerTitle: true,
        elevation: 0,
        title: const Text(
          'Store Hoem ',
          style: TextStyle(
            color: Color.fromARGB(255, 224, 139, 11),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 65),
          child: FutureBuilder<List<ProductModel>>(
            future: AllProductsService().getAllProducts(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                //todo to show the product on all pages 
                List<ProductModel> products = snapshot.data!;
                return GridView.builder(
                  clipBehavior: Clip.none,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.6,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 100,
                  ),
                  itemCount: products.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CustomCard(
                      product: products[index],
                    );
                  },
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          )),
    );
  }
}
