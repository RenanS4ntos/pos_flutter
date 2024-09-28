import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:pos_flutter/models/product_model.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
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
                Image.network(
                  widget.product.image,
                  width: 100,
                  height: 100,
                ),
                const SizedBox(height: 16),
                Text(
                  widget.product.title,
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  widget.product.description,
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
                    widget.product.category,
                    style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 8),
                StarRating(
                  rating: widget.product.rating.rate,
                  color: Colors.lightBlue[300],
                ),
                const SizedBox(height: 8),
                Text(
                  'R\$ ${widget.product.price}',
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
