import 'package:pos_flutter/models/rating_model.dart';

class ProductModel {
  final int id;
  final String title;
  final String image;
  final double price;
  final String category;
  final String description;
  final RatingModel rating;

  ProductModel({
    required this.id,
    required this.title,
    required this.image,
    required this.price,
    required this.category,
    required this.description,
    required this.rating,
  });

  // Converter o JSON em um objeto produto
  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      title: json['title'],
      image: json['image'],
      price: json['price'].toDouble(),
      category: json['category'],
      description: json['description'],
      rating: RatingModel.fromJson(json['rating']),
    );
  }
}
