import 'dart:math';
import 'package:ecommerce/core/app_collors.dart';
import 'package:ecommerce/widgets/custom_button.dart';
import 'package:ecommerce/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  final List<String> backgrounds = [
    'assets/onBoarding/bg1.png',
    'assets/onBoarding/bg2.png',
    'assets/onBoarding/bg3.png',
  ];
  final String logo = 'assets/logo.png';
  final String googleIcon = 'assets/icons/google.png';

  OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bg = backgrounds[Random().nextInt(backgrounds.length)];

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(bg), fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(logo),
              CustomText(text: "Stay High."),
              CustomText(text: "Stay Happy."),
              CustomText(text: "Always."),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(label: "Join", onPressed: () {}),
                  SizedBox(width: 20),
                  CustomButton(label: "Login", onPressed: () {}),
                ],
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {}, //logic to handle google login
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(googleIcon, height: 20, width: 20),
                    Text(
                      " Continue with google",
                      style: TextStyle(
                        color: AppCollors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
