import 'dart:html';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Api {
  // todo get request
  Future<dynamic> get({required String url}) async {
    http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('error status code ${response.statusCode}');
    }
  }

  // todo post request
  Future<dynamic> post(
      {required String url,
      @required dynamic body,
      @required String? token}) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    http.Response response =
        await http.post((Uri.parse(url)), body: body, headers: headers);
    Map<String, dynamic> data = jsonDecode(response.body);
    return data;
  }
}
