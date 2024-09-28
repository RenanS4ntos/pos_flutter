import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pos_flutter/models/product_model.dart';

class ProductController with ChangeNotifier {
  final List<ProductModel> _products = [];

  List<ProductModel> get products => _products;

  Future<List<ProductModel>> fetchProducts() async {
    String baseUrl = 'https://fakestoreapi.com';
    final url = Uri.parse('$baseUrl/products');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List<dynamic> productData = json.decode(response.body);
      _products.clear();
      _products.addAll(
          productData.map((data) => ProductModel.fromJson(data)).toList());
      notifyListeners();
    } else {
      throw Exception('Failed to load products');
    }
    return _products;
  }
}
