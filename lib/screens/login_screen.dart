import 'package:ecommerce/controllers/login_controller.dart';
import 'package:ecommerce/core/app_collors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                Image.asset(
                  'assets/logo2.png',
                  height: 100,
                  width: 100,
                ),
                const SizedBox(height: 24),
                const Text(
                  'Create your\naccount',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                    height: 1.2,
                    decoration: TextDecoration.underline,
                    decorationColor: AppCollors.white,
                    color: AppCollors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32),
          
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'EMAIL ADDRESS',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: AppCollors.green,
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                TextField(
                  controller: controller.emailController,
                  decoration: InputDecoration(
                    hintText: 'test@example.com',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                  ),
                ),
                const SizedBox(height: 20),
          
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'PASSWORD',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: AppCollors.green,
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                Obx(() => TextField(
                      controller: controller.passwordController,
                      obscureText: controller.obscureText.value,
                      decoration: InputDecoration(
                        hintText: '********',
                        suffixIcon: IconButton(
                          icon: Icon(
                            controller.obscureText.value
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                          onPressed: controller.toggleObscure,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 12),
                      ),
                    )),
                const SizedBox(height: 16),
          
                Obx(() => Row(
                      children: [
                        Checkbox(
                          value: controller.agree.value,
                          activeColor: AppCollors.green,
                          onChanged: controller.toggleAgree,
                        ),
                        const Expanded(
                          child: Text(
                            'By creating an account you agree with our terms and conditions',
                            style: TextStyle(fontSize: 13, color: Colors.grey),
                          ),
                        ),
                      ],
                    )),
                const SizedBox(height: 24),
          
                Obx(() => SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: ElevatedButton(
                        onPressed: controller.agree.value ? () {} : null,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppCollors.green,
                          disabledBackgroundColor: Colors.green.shade200,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text(
                          'Create an account',
                          style: TextStyle(fontSize: 16,color: AppCollors.white),
                        ),
                      ),
                    )),
                const SizedBox(height: 16),
          
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already a member? "),
                    GestureDetector(
                      onTap: () {
                        // Navigate to login
                      },
                      child: const Text(
                        "Log in",
                        style: TextStyle(color: AppCollors.green),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
