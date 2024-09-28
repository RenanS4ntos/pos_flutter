import 'package:flutter/material.dart';
import 'package:pos_flutter/constants/styles.dart';

class CategoryWidget extends StatelessWidget {
  final String text;
  final String imagePath;
  final Color backgroundColor;

  const CategoryWidget({
    super.key,
    required this.text,
    required this.imagePath,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 180,
      decoration: BoxDecoration(
        color: backgroundColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: backgroundColor, width: 2),
      ),
      margin: const EdgeInsets.only(top: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
          ),
          Text(
            text,
            style: AppStyles.itensTitle,
            textAlign: TextAlign.center, // Alinha o texto ao centro
          ),
        ],
      ),
    );
  }
}
