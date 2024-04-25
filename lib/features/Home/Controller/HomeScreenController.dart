import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../View/Widgets/MainPage.dart';

class HomeScreenController extends GetxController {
  int selectedBottomNavigationBarIndex = 0;

  onDestenationSelected(int index) {
    selectedBottomNavigationBarIndex = index;
    print(selectedBottomNavigationBarIndex);
    update();
  }

  Widget changeCurrPage() {
    if (selectedBottomNavigationBarIndex == 0) {
      return const MainPage();
    } else if (selectedBottomNavigationBarIndex == 1) {
      return const Scaffold(
        backgroundColor: Colors.white,
      );
    } else if (selectedBottomNavigationBarIndex == 2) {
      return const Scaffold(
        backgroundColor: Colors.red,
      );
    }
    return const Scaffold(
      backgroundColor: Colors.green,
    );
  }
}
