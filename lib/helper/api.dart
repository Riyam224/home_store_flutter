import 'package:http/http.dart' as http;
import 'dart:convert';

class Api {
  Future<dynamic> get({required String url}) async {
    http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('error status code ${response.statusCode}');
    }
  }
}
