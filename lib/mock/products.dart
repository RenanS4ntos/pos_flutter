import 'package:flutter/material.dart';
import 'package:pos_flutter/constants/assets.dart';
import 'package:pos_flutter/views/widgets/category_widget.dart';

List<CategoryWidget> listProducts = [
  const CategoryWidget(
    text: 'Bebidas & Refrigerantes',
    imagePath: AppAssets.product1,
    backgroundColor: Colors.lightGreen,
  ),
  const CategoryWidget(
    text: 'Leite & Derivados',
    imagePath: AppAssets.product2,
    backgroundColor: Colors.orange,
  ),
  const CategoryWidget(
    text: 'Pães & Massas',
    imagePath: AppAssets.product3,
    backgroundColor: Colors.red,
  ),
  const CategoryWidget(
    text: 'Carnes & Peixes',
    imagePath: AppAssets.product4,
    backgroundColor: Colors.purple,
  ),
  const CategoryWidget(
    text: 'Óleos & Azeites',
    imagePath: AppAssets.product5,
    backgroundColor: Colors.indigo,
  ),
  const CategoryWidget(
    text: 'Frutas & Legumes',
    imagePath: AppAssets.product6,
    backgroundColor: Colors.teal,
  ),
];
