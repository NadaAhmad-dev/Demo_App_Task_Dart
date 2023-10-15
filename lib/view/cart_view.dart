import 'package:demo_app_task/core/viewModel/cart_view_model.dart';
import 'package:demo_app_task/utils/utils.dart';
import 'package:demo_app_task/view/widgets/address_bar.dart';
import 'package:demo_app_task/view/widgets/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartView extends GetWidget<CartViewModel> {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: AppBar(
        toolbarHeight: 20,
        backgroundColor: ColorManager.white,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          addressBar(context, 'Oxford Street'),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: PaddingManager.p20,
              vertical: PaddingManager.p30,
            ),
            child: Text(
              'Cart',
              style: getPoppinsBoldStyle(
                color: ColorManager.titleColor,
                fontSize: adjustValue(
                  context,
                  SizeManager.s20,
                ),
              ),
            ),
          ),
          CartItem(
            color: ColorManager.steak,
            name: 'Turkish Steak',
            data: '173 Grams',
            btns: Row(
              children: [
                GetBuilder<CartViewModel>(
                  builder: (controller) => InkWell(
                    onTap: () {
                      controller.decrement1();
                    },
                    child: Container(
                      height: adjustHeightValue(
                        context,
                        SizeManager.s30,
                      ),
                      width: adjustWidthValue(
                        context,
                        SizeManager.s30,
                      ),
                      decoration: const BoxDecoration(
                        color: ColorManager.fish,
                        borderRadius: BorderRadius.all(
                          Radius.circular(SizeManager.s6),
                        ),
                      ),
                      child: const Icon(
                        Icons.minimize,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: PaddingManager.p20,
                  ),
                  child: GetBuilder<CartViewModel>(
                    init: CartViewModel(),
                    builder: (controller) => Text(
                      controller.count1.toString(),
                      style: getPoppinsBoldStyle(
                        color: ColorManager.categoryName,
                        fontSize: SizeManager.s30,
                      ),
                    ),
                  ),
                ),
                GetBuilder<CartViewModel>(
                  builder: (controller) => InkWell(
                    onTap: () {
                      controller.increment1();
                    },
                    child: Container(
                      height: adjustHeightValue(
                        context,
                        SizeManager.s30,
                      ),
                      width: adjustWidthValue(
                        context,
                        SizeManager.s30,
                      ),
                      decoration: const BoxDecoration(
                        color: ColorManager.fish,
                        borderRadius: BorderRadius.all(
                          Radius.circular(SizeManager.s6),
                        ),
                      ),
                      child: const Icon(
                        Icons.add,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            price: GetBuilder<CartViewModel>(
              builder: (controller) => Text(
                '${controller.count1 * 25}\$',
                style: getPoppinsBoldStyle(
                  color: ColorManager.primary,
                  fontSize: FontSize.s20,
                ),
              ),
            ),
          ),
          CartItem(
            color: ColorManager.fish,
            name: 'Salmon',
            data: '2 Serving',
            btns: Row(
              children: [
                GetBuilder<CartViewModel>(
                  builder: (controller) => InkWell(
                    onTap: () {
                      controller.decrement2();
                    },
                    child: Container(
                      height: adjustHeightValue(
                        context,
                        SizeManager.s30,
                      ),
                      width: adjustWidthValue(
                        context,
                        SizeManager.s30,
                      ),
                      decoration: const BoxDecoration(
                        color: ColorManager.fish,
                        borderRadius: BorderRadius.all(
                          Radius.circular(SizeManager.s6),
                        ),
                      ),
                      child: const Icon(
                        Icons.minimize,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: PaddingManager.p20,
                  ),
                  child: GetBuilder<CartViewModel>(
                    init: CartViewModel(),
                    builder: (controller) => Text(
                      controller.count2.toString(),
                      style: getPoppinsBoldStyle(
                        color: ColorManager.categoryName,
                        fontSize: SizeManager.s30,
                      ),
                    ),
                  ),
                ),
                GetBuilder<CartViewModel>(
                  builder: (controller) => InkWell(
                    onTap: () {
                      controller.increment2();
                    },
                    child: Container(
                      height: adjustHeightValue(
                        context,
                        SizeManager.s30,
                      ),
                      width: adjustWidthValue(
                        context,
                        SizeManager.s30,
                      ),
                      decoration: const BoxDecoration(
                        color: ColorManager.fish,
                        borderRadius: BorderRadius.all(
                          Radius.circular(SizeManager.s6),
                        ),
                      ),
                      child: const Icon(
                        Icons.add,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            price: GetBuilder<CartViewModel>(
              builder: (controller) => Text(
                '${controller.count2 * 30}\$',
                style: getPoppinsBoldStyle(
                  color: ColorManager.primary,
                  fontSize: FontSize.s20,
                ),
              ),
            ),
          ),
          CartItem(
            color: ColorManager.juice,
            name: 'Red Juice',
            data: '1 Bottle',
            btns: Row(
              children: [
                GetBuilder<CartViewModel>(
                  builder: (controller) => InkWell(
                    onTap: () {
                      controller.decrement3();
                    },
                    child: Container(
                      height: adjustHeightValue(
                        context,
                        SizeManager.s30,
                      ),
                      width: adjustWidthValue(
                        context,
                        SizeManager.s30,
                      ),
                      decoration: const BoxDecoration(
                        color: ColorManager.fish,
                        borderRadius: BorderRadius.all(
                          Radius.circular(SizeManager.s6),
                        ),
                      ),
                      child: const Icon(
                        Icons.minimize,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: PaddingManager.p20,
                  ),
                  child: GetBuilder<CartViewModel>(
                    init: CartViewModel(),
                    builder: (controller) => Text(
                      controller.count3.toString(),
                      style: getPoppinsBoldStyle(
                        color: ColorManager.categoryName,
                        fontSize: SizeManager.s30,
                      ),
                    ),
                  ),
                ),
                GetBuilder<CartViewModel>(
                  builder: (controller) => InkWell(
                    onTap: () {
                      controller.increment3();
                    },
                    child: Container(
                      height: adjustHeightValue(
                        context,
                        SizeManager.s30,
                      ),
                      width: adjustWidthValue(
                        context,
                        SizeManager.s30,
                      ),
                      decoration: const BoxDecoration(
                        color: ColorManager.fish,
                        borderRadius: BorderRadius.all(
                          Radius.circular(SizeManager.s6),
                        ),
                      ),
                      child: const Icon(
                        Icons.add,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            price: GetBuilder<CartViewModel>(
              builder: (controller) => Text(
                '${controller.count3 * 25}\$',
                style: getPoppinsBoldStyle(
                  color: ColorManager.primary,
                  fontSize: FontSize.s20,
                ),
              ),
            ),
          ),
          CartItem(
            color: ColorManager.beverages,
            name: 'Cola',
            data: '1 Bottle',
            btns: Row(
              children: [
                GetBuilder<CartViewModel>(
                  builder: (controller) => InkWell(
                    onTap: () {
                      controller.decrement4();
                    },
                    child: Container(
                      height: adjustHeightValue(
                        context,
                        SizeManager.s30,
                      ),
                      width: adjustWidthValue(
                        context,
                        SizeManager.s30,
                      ),
                      decoration: const BoxDecoration(
                        color: ColorManager.fish,
                        borderRadius: BorderRadius.all(
                          Radius.circular(SizeManager.s6),
                        ),
                      ),
                      child: const Icon(
                        Icons.minimize,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: PaddingManager.p20,
                  ),
                  child: GetBuilder<CartViewModel>(
                    init: CartViewModel(),
                    builder: (controller) => Text(
                      controller.count4.toString(),
                      style: getPoppinsBoldStyle(
                        color: ColorManager.categoryName,
                        fontSize: SizeManager.s30,
                      ),
                    ),
                  ),
                ),
                GetBuilder<CartViewModel>(
                  builder: (controller) => InkWell(
                    onTap: () {
                      controller.increment4();
                    },
                    child: Container(
                      height: adjustHeightValue(
                        context,
                        SizeManager.s30,
                      ),
                      width: adjustWidthValue(
                        context,
                        SizeManager.s30,
                      ),
                      decoration: const BoxDecoration(
                        color: ColorManager.fish,
                        borderRadius: BorderRadius.all(
                          Radius.circular(SizeManager.s6),
                        ),
                      ),
                      child: const Icon(
                        Icons.add,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            price: GetBuilder<CartViewModel>(
              builder: (controller) => Text(
                '${controller.count4 * 11}\$',
                style: getPoppinsBoldStyle(
                  color: ColorManager.primary,
                  fontSize: FontSize.s20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
