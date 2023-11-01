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
    // todo check for status code exception
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      return data;
    } else {
      // throw Exception(jsonDecode(response.body));
      throw Exception(
          'error status code ${response.statusCode} with body ${jsonDecode(response.body)}');
    }
  }

  // todo put request
  Future<dynamic> put(
      {required String url,
      @required dynamic body,
      @required String? token}) async {
    Map<String, String> headers = {};
    // todo
    headers.addAll(
      {'Content-Type': 'application/x-www-form-urlencoded'},
    );
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    http.Response response =
        await http.post((Uri.parse(url)), body: body, headers: headers);
    // todo check for status code exception
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      return data;
    } else {
      // throw Exception(jsonDecode(response.body));
      throw Exception(
          'error status code ${response.statusCode} with body ${jsonDecode(response.body)}');
    }
  }
}
