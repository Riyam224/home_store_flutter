import 'package:home_store/helper/api.dart';
import 'package:home_store/mpdels/product_model.dart';
class UpdateProductService {
   Future<ProductModel> addProduct(
      {required String title,
      required String price,
      required String description,
      required String image,
      required String category}) async {
    Map<String, dynamic> data =
        await Api().put(url: 'https://fakestoreapi.com/products', body: {
      "title": title,
      "price": price,
      "description": description,
      "image": image,
      "category": category
    });
    return ProductModel.fromJson(data);
  }
}