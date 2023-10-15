import 'package:demo_app_task/view/cart_view.dart';
import 'package:demo_app_task/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControlViewModel extends GetxController {
  int _navigatorValue = 0;

  get navigatorValue => _navigatorValue;

  Widget currentScreen = HomeView();

  void changeSelectedValue(int selectedValue) {
    _navigatorValue = selectedValue;
    switch (selectedValue) {
      case 0:
        {
          currentScreen = HomeView();
          break;
        }
      case 1:
        {
          break;
        }
      case 2:
        {
          break;
        }
      case 3:
        {
          currentScreen = const CartView();
          break;
        }
    }
    update();
  }
}
