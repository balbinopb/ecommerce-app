

import 'package:ecommerce/routes/app_routes.dart';
import 'package:ecommerce/screens/home_screen.dart';
import 'package:ecommerce/screens/on_boarding_screen.dart';
import 'package:ecommerce/screens/splash_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppPages {

  static const initial = Routes.onBoarding;

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
      name: Routes.home,
      page: () => const HomeScreen(),
      //binding: HomeBinding(),
    ),

  ];

}