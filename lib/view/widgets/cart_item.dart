import 'package:demo_app_task/utils/utils.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CartItem extends StatelessWidget {
  CartItem({
    Key? key,
    required this.color,
    required this.name,
    required this.data,
    required this.btns,
    required this.price,
  }) : super(key: key);

  Color color;
  String name;
  String data;
  Widget btns;
  Widget price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: adjustValue(context, PaddingManager.p20),
        right: adjustValue(context, PaddingManager.p20),
      ),
      child: Row(
        children: [
          Container(
            height: adjustHeightValue(
              context,
              SizeManager.s50,
            ),
            width: adjustWidthValue(
              context,
              SizeManager.s50,
            ),
            decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.all(
                Radius.circular(SizeManager.s15),
              ),
            ),
          ),
          SizedBox(
            width: adjustWidthValue(context, SizeManager.s20),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                name,
                style: getPoppinsBoldStyle(
                  color: ColorManager.categoryName,
                  fontSize: adjustValue(
                    context,
                    FontSize.s14,
                  ),
                ),
              ),
              Text(
                data,
                style: getPoppinsMediumStyle(
                  color: ColorManager.categoryName,
                  fontSize: adjustValue(
                    context,
                    FontSize.s12,
                  ),
                ),
              ),
              price,
            ],
          ),
          const Spacer(),
          btns,
        ],
      ),
    );
  }
}
