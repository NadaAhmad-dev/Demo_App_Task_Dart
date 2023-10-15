import 'package:demo_app_task/core/viewModel/control_view_model.dart';
import 'package:demo_app_task/utils/utils.dart';
import 'package:demo_app_task/view/widgets/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControlView extends GetWidget<ControlViewModel> {
  const ControlView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ControlViewModel>(
      builder: (controller) => Scaffold(
        backgroundColor: ColorManager.white,
        body: controller.currentScreen,
        bottomNavigationBar: bottomNavigationBar(context),
        floatingActionButton: FloatingActionButton(
          backgroundColor: ColorManager.primary,
          onPressed: () {},
          child: Icon(
            Icons.add_shopping_cart,
            size: adjustValue(context, SizeManager.s30),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
