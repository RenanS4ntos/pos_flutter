import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pos_flutter/models/product_model.dart';
import 'package:pos_flutter/views/product_detail_page.dart';
import 'package:http/http.dart' as http;
import 'package:pos_flutter/views/widgets/category_widget.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  void initState() {
    // TODO: implement initState
    getProducts();
    super.initState();
  }

  List<ProductModel> products = [];

  getProducts() async {
    String baseUrl = 'https://fakestoreapi.com';

    final response = await http.get(Uri.parse('$baseUrl/products'));

    if (response.statusCode == 200) {
      List<dynamic> jsonData = json.decode(response.body);

      setState(() {
        products = jsonData.map((product) {
          return ProductModel.fromJson(product);
        }).toList();
      });

      print(products[0].title);
    } else {
      print('Erro ao buscar produtos');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Produtos'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'Buscar...',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                primary: false,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemCount: products.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              ProductDetailPage(product: products[index])));
                    },
                    child: CategoryWidget(
                      product: products[index],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
