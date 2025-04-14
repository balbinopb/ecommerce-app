import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  var obscureText = true.obs;
  var agree = false.obs;

  void toggleObscure() {
    obscureText.value = !obscureText.value;
  }

  void toggleAgree(bool? val) {
    agree.value = val ?? false;
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
