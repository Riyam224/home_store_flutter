import 'dart:convert';
import 'package:home_store/mpdels/product_model.dart';
import 'package:http/http.dart' as http;
// todo service for all the products 
class AllProductsService {
  Future<List<ProductModel>> getAllProducts() async {
    http.Response response =
        await http.get(Uri.parse('https://fakestoreapi.com/products'));
// return list as the url .. shows
    List<dynamic> data = jsonDecode(response.body);
    List<ProductModel> productsList = [];
    for (int i = 0; i < data.length; i++) {
      productsList.add(ProductModel.fromJson(data[i]));
    }
    return productsList;
  }
}
