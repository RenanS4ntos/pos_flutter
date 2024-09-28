import 'package:flutter/material.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({
    super.key,
    required this.title,
    required this.imagePath,
    required this.color,
  });

  final String title;
  final String imagePath;
  final Color color;

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Image.asset(widget.imagePath),
        Text(widget.title, style: TextStyle(color: widget.color)),
      ]),
    );
  }
}
