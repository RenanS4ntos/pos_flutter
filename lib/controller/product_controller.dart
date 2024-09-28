import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pos_flutter/models/product_model.dart';

class ProductController with ChangeNotifier {
  Future<List<ProductModel>> fetchProducts() async {
    String baseUrl = 'https://fakestoreapi.com';
    final url = Uri.parse('$baseUrl/products');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      List<dynamic> jsonData = json.decode(response.body);

      return jsonData.map((product) => ProductModel.fromJson(product)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }
}
