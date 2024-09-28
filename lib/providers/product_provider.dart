import 'package:flutter/material.dart';
import 'package:pos_flutter/controller/product_controller.dart';
import 'package:pos_flutter/models/product_model.dart';

class ProductProvider extends ChangeNotifier {
  final ProductController _productController = ProductController();
  List<ProductModel> _products = [];
  bool _isLoading = false;
  bool _error = false;

  List<ProductModel> get products => _products;
  bool get isLoading => _isLoading;
  bool get error => _error;

  Future<void> fetchProducts() async {
    try {
      _isLoading = true;
      final List<ProductModel> products =
          await _productController.fetchProducts();

      _products = products;
    } catch (e) {
      _error = true;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  ProductProvider() {
    fetchProducts();
  }
}
