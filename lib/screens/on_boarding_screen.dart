import 'dart:math';
import 'package:ecommerce/controllers/onboarding_controller.dart';
import 'package:ecommerce/core/app_collors.dart';
import 'package:ecommerce/routes/app_routes.dart';
import 'package:ecommerce/widgets/custom_button.dart';
import 'package:ecommerce/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends GetView<OnboardingController> {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bg =
        controller.backgrounds[Random().nextInt(controller.backgrounds.length)];

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(bg), fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(controller.logo),
              CustomText(text: "Stay High."),
              CustomText(text: "Stay Happy."),
              CustomText(text: "Always."),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(label: "Join", onPressed: () {}),
                  SizedBox(width: 20),
                  CustomButton(
                    label: "Login",
                    onPressed: () {
                      // nav to login
                      Get.toNamed(Routes.login);
                    },
                  ),
                ],
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(controller.googleIcon, height: 20, width: 20),
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
