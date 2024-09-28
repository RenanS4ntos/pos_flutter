import 'package:flutter/material.dart';
import 'package:pos_flutter/constants/assets.dart';
import 'package:pos_flutter/views/widgets/category_widget.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
          'Buscar produtos',
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0), // px-16
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  // hintText: 'Buscar produtos',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryWidget(
                    text: 'Bebidas & Refrigerantes',
                    imagePath: AppAssets.product1,
                    backgroundColor: Colors.lightGreen,
                  ),
                  CategoryWidget(
                    text: 'Leite & Derivados',
                    imagePath: AppAssets.product2,
                    backgroundColor: Colors.orange,
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryWidget(
                    text: 'Pães & Massas',
                    imagePath: AppAssets.product3,
                    backgroundColor: Colors.red,
                  ),
                  CategoryWidget(
                    text: 'Carnes & Peixes',
                    imagePath: AppAssets.product4,
                    backgroundColor: Colors.purple,
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryWidget(
                    text: 'Óleos & Azeites',
                    imagePath: AppAssets.product5,
                    backgroundColor: Colors.indigo,
                  ),
                  CategoryWidget(
                    text: 'Frutas & Legumes',
                    imagePath: AppAssets.product6,
                    backgroundColor: Colors.teal,
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
