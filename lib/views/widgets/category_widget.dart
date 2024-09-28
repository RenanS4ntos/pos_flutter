import 'package:flutter/material.dart';
import 'package:pos_flutter/constants/styles.dart';
import 'package:pos_flutter/models/product_model.dart';

class CategoryWidget extends StatelessWidget {
  final ProductModel product;

  const CategoryWidget({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 180,
      decoration: BoxDecoration(
        color: Colors.lightBlue.withOpacity(0.2),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.lightBlue, width: 2),
      ),
      margin: const EdgeInsets.only(top: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            height: 80,
            width: 100,
            product.image,
          ),
          Text(
            product.title,
            style: AppStyles.itensTitle,
            textAlign: TextAlign.center, // Alinha o texto ao centro
          ),
        ],
      ),
    );
  }
}
