import 'package:demo_app_task/core/data.dart';
import 'package:demo_app_task/core/viewModel/home_view_model.dart';
import 'package:demo_app_task/utils/utils.dart';
import 'package:demo_app_task/view/widgets/address_bar.dart';
import 'package:demo_app_task/view/widgets/address_item.dart';
import 'package:demo_app_task/view/widgets/category_item.dart';
import 'package:demo_app_task/view/widgets/deal_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomeView extends GetView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: AppBar(
        toolbarHeight: adjustHeightValue(context, SizeManager.s12),
        backgroundColor: ColorManager.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            addressBar(context, 'Mustafa St.'),
            Padding(
              padding: const EdgeInsets.all(PaddingManager.p20),
              child: Container(
                width: double.infinity,
                height: adjustHeightValue(
                  context,
                  SizeManager.s45,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    adjustValue(
                      context,
                      SizeManager.s10,
                    ),
                  ),
                  color: ColorManager.searchFill,
                  border: Border.all(
                    color: ColorManager.stroke,
                  ),
                ),
                child: Center(
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        size: adjustValue(
                          context,
                          SizeManager.s30,
                        ),
                        color: ColorManager.stroke,
                      ),
                      hintText: 'Search in thousands of products',
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: adjustWidthValue(
                  context,
                  PaddingManager.p20,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  addressItem(context, addresses[0]),
                  addressItem(context, addresses[1]),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: adjustValue(
                  context,
                  PaddingManager.p20,
                ),
                right: adjustValue(
                  context,
                  PaddingManager.p10,
                ),
                top: adjustValue(
                  context,
                  PaddingManager.p14,
                ),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Explore by Category',
                      style: getPoppinsBoldStyle(
                        color: ColorManager.titleColor,
                        fontSize: adjustValue(
                          context,
                          FontSize.s18,
                        ),
                      ),
                    ),
                    Text(
                      'See All (36)',
                      style: getPoppinsRegularStyle(
                        color: ColorManager.searchStroke,
                        fontSize: adjustValue(
                          context,
                          FontSize.s12,
                        ),
                      ),
                    ),
                  ]),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: adjustValue(
                  context,
                  PaddingManager.p20,
                ),
              ),
              child: SizedBox(
                height: SizeManager.s100,
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      categoryItem(context, categories[index]),
                  itemCount: categories.length,
                  separatorBuilder: (context, index) => SizedBox(
                    width: adjustWidthValue(
                      context,
                      SizeManager.s20,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: adjustValue(
                context,
                PaddingManager.p20,
              )),
              child: Text(
                'Deals of the day',
                style: getPoppinsBoldStyle(
                  color: ColorManager.titleColor,
                  fontSize: adjustValue(
                    context,
                    FontSize.s18,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: adjustWidthValue(
                  context,
                  PaddingManager.p20,
                ),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DealItem(
                        color: ColorManager.steak,
                        name: 'Summer Sun Ice Cream',
                        num: '5 Pieces',
                        location: '15 Min',
                        iconBtn: Obx(() => IconButton(
                              onPressed: () {
                                controller.fav1.value =
                                    !controller.fav1.value;
                              },
                              icon: Icon(
                                controller.fav1.value
                                    ? Icons.favorite_border
                                    : Icons.favorite,
                                color: controller.fav1.value
                                    ? ColorManager.grey
                                    : ColorManager.primary,
                                size: SizeManager.s15,
                              ),
                            )),
                        activePrice: '12\$',
                        discountPrice: '18\$'),
                    DealItem(
                        color: ColorManager.fish,
                        name: 'Summer Sun Ice Cream',
                        num: '5 Pieces',
                        location: '15 Min',
                        iconBtn: Obx(() => IconButton(
                              onPressed: () {
                                controller.fav2.value =
                                    !controller.fav2.value;
                              },
                              icon: Icon(
                                controller.fav2.value
                                    ? Icons.favorite_border
                                    : Icons.favorite,
                                color: controller.fav2.value
                                    ? ColorManager.grey
                                    : ColorManager.primary,
                                size: SizeManager.s15,
                              ),
                            )),
                        activePrice: '12\$',
                        discountPrice: '18\$'),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: adjustWidthValue(
                  context,
                  PaddingManager.p20,
                ),
                vertical: adjustHeightValue(
                  context,
                  PaddingManager.p10,
                ),
              ),
              child: Container(
                height: adjustHeightValue(
                  context,
                  SizeManager.s120,
                ),
                width: adjustWidthValue(
                  context,
                  double.infinity,
                ),
                decoration: BoxDecoration(
                  color: ColorManager.steak,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      adjustValue(
                        context,
                        SizeManager.s15,
                      ),
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: adjustWidthValue(
                        context,
                        SizeManager.s120,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mega',
                          style: getPoppinsRegularStyle(
                            color: ColorManager.primary,
                            fontSize: adjustValue(
                              context,
                              FontSize.s15,
                            ),
                          ),
                        ),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                            text: 'WHOPP',
                            style: getPoppinsBoldStyle(
                              color: ColorManager.whopper,
                              fontSize: adjustValue(
                                context,
                                SizeManager.s20,
                              ),
                            ),
                          ),
                          TextSpan(
                            text: 'E',
                            style: getPoppinsBoldStyle(
                              color: ColorManager.primary,
                              fontSize: adjustValue(
                                context,
                                SizeManager.s20,
                              ),
                            ),
                          ),
                          TextSpan(
                            text: 'R',
                            style: getPoppinsBoldStyle(
                              color: ColorManager.whopper,
                              fontSize: adjustValue(
                                context,
                                SizeManager.s20,
                              ),
                            ),
                          ),
                        ])),
                        Row(
                          children: [
                            Text(
                              '\$17',
                              style: getPoppinsBoldStyle(
                                color: ColorManager.primary,
                                fontSize: adjustValue(
                                  context,
                                  FontSize.s20,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: adjustWidthValue(
                                context,
                                SizeManager.s15,
                              ),
                            ),
                            Text(
                              '\$32',
                              style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                color: ColorManager.white,
                                fontWeight: FontWeight.bold,
                                fontSize: adjustValue(
                                  context,
                                  FontSize.s20,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Available Until 24 December 2020',
                          style: getPoppinsRegularStyle(
                            color: ColorManager.white,
                            fontSize: adjustValue(
                              context,
                              FontSize.s10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
