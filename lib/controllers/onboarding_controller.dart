
import 'package:get/get.dart';

class OnboardingController extends GetxController{
  var isSelected = 0.obs;

  void changeSelected(int index) {
    isSelected.value = index;
  }
}