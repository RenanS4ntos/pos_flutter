import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:pos_flutter/models/product_model.dart';
import 'package:pos_flutter/providers/favorite_provider.dart';
import 'package:provider/provider.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    //Estancia do provider criado => FavoriteProvider
    final favoriteProvider = Provider.of<FavoriteProvider>(context);

    bool isFavorite = favoriteProvider.isFavorite(product);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Produto'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          elevation: 4.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      icon: Icon(
                        isFavorite ? Icons.favorite : Icons.favorite_border,
                        color: Colors.red,
                      ),
                      onPressed: () {
                        if (isFavorite) {
                          favoriteProvider.removeFavoriteProduct(product);
                        } else {
                          favoriteProvider.addFavoriteProduct(product);
                        }
                      },
                    ),
                  ],
                ),
                Image.network(
                  product.image,
                  width: 300,
                  height: 200,
                ),
                const SizedBox(height: 16),
                Text(
                  product.title,
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  product.description,
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 4.0),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(color: Colors.lightBlue),
                  ),
                  child: Text(
                    product.category,
                    style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 8),
                StarRating(
                  rating: product.rating.rate,
                  color: Colors.lightBlue[300],
                ),
                const SizedBox(height: 8),
                Text(
                  'R\$ ${product.price}',
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
