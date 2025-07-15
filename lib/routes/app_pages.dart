

import 'package:ecommerce/bindings/login_binding.dart';
import 'package:ecommerce/routes/app_routes.dart';
import 'package:ecommerce/screens/home_screen.dart';
import 'package:ecommerce/screens/login_screen.dart';
import 'package:ecommerce/screens/on_boarding_screen.dart';
import 'package:ecommerce/screens/register_screen.dart';
import 'package:ecommerce/screens/splash_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppPages {

  static const initial = Routes.login;

  static final routes = [
    GetPage(
      name: Routes.splash,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: Routes.onBoarding,
      page: () => OnBoardingScreen(),
    ),

    GetPage(
      name: Routes.login,
      page: () => const LoginScreen(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.home,
      page: () => const HomeScreen(),
      //binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.register,
      page: () => const RegisterScreen(),
      //binding: HomeBinding(),
    ),

  ];

}