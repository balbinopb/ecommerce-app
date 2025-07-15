import 'package:get/get.dart';

class OnboardingController extends GetxController {
  final List<String> backgrounds = [
    'assets/onBoarding/bg1.png',
    'assets/onBoarding/bg2.png',
    'assets/onBoarding/bg3.png',
  ];
  
  final String logo = 'assets/logo.png';
  final String googleIcon = 'assets/icons/google.png';
  var isSelected = 0.obs;

  void changeSelected(int index) {
    isSelected.value = index;
  }
}
