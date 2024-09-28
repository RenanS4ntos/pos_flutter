//Vou gerenciar o estado de uma lista de favoritos no app

import 'package:flutter/material.dart';
import 'package:pos_flutter/models/product_model.dart';

class FavoriteProvider extends ChangeNotifier {
//Crio a lista ou qq variavel que eu  queira observar o estado
//Quando o estado for modificado, eu NOTIFICO a arvore de widgets!

//Quais os estados??
//1. Se é favorito  => bool
//2.Lista de favoritos

  final List<ProductModel> _favoriteProducts = [];

  //Pegar a lista de favoritos

  List<ProductModel> get favoriteProducts => _favoriteProducts;

  //Add um produto aos favoritos

  void addFavoriteProduct(ProductModel product) {
    if (!_favoriteProducts.contains(product)) {
      _favoriteProducts.add(product);

      notifyListeners();
    }
  }

  void removeFavoriteProduct(ProductModel product) {
    _favoriteProducts.remove(product);
    //Importante para a arvore de wigets saber da alteracao!!
    notifyListeners();
  }

  bool isFavorite(ProductModel product) {
    return _favoriteProducts.contains(product);
  }
}
