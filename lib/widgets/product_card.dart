import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Color colorProduct;
  final String title;
  final String imageProduct;
  const ProductCard({
    super.key,
    required this.colorProduct,
    required this.imageProduct,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 84,
          height: 85,
          decoration: BoxDecoration(
            color: colorProduct,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Image.asset(imageProduct),
        ),
        SizedBox(height: 17),
        Text(title),
      ],
    );
  }
}
