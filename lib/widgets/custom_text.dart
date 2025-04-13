import 'package:ecommerce/core/app_collors.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;

  const CustomText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 36,
        color: AppCollors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
