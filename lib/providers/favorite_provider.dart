import 'package:flutter/material.dart';
import 'package:pos_flutter/models/product_model.dart';

class FavoriteProvider extends ChangeNotifier {
  final List<ProductModel> _favorites = [];

  List<ProductModel> get favorites => _favorites;

  void toggleFavorite(ProductModel product) {
    if (_favorites.contains(product)) {
      _favorites.remove(product);
    } else {
      _favorites.add(product);
    }

    notifyListeners();
  }

  bool isFavorite(ProductModel product) {
    return _favorites.contains(product);
  }
}
