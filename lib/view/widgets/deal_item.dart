import 'package:demo_app_task/utils/utils.dart';
import 'package:flutter/material.dart';

class DealItem extends StatelessWidget {
  DealItem({
    Key? key,
    required this.color,
    required this.name,
    required this.num,
    required this.location,
    required this.iconBtn,
    required this.activePrice,
    required this.discountPrice,
  }) : super(key: key);

  Color color;
  String name;
  String num;
  String location;
  String activePrice;
  String discountPrice;
  Widget iconBtn;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.topLeft,
          children: [
            Container(
              height: SizeManager.s100,
              width: SizeManager.s100,
              decoration: BoxDecoration(
                color: color,
                borderRadius: const BorderRadius.all(
                  Radius.circular(SizeManager.s15),
                ),
              ),
            ),
            Container(
              height: 30,
              width: 30,
              decoration: const BoxDecoration(
                color: ColorManager.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(SizeManager.s15),
                  topRight: Radius.circular(SizeManager.s20),
                  bottomLeft: Radius.circular(SizeManager.s20),
                  bottomRight: Radius.circular(SizeManager.s20),
                ),
              ),
              alignment: Alignment.center,
              child: iconBtn,
            ),
          ],
        ),
        const SizedBox(
          width: SizeManager.s10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,
              style: getPoppinsBoldStyle(
                color: ColorManager.categoryName,
                fontSize: FontSize.s12,
              ),
            ),
            Text(
              num,
              style: getPoppinsMediumStyle(
                color: ColorManager.categoryName,
                fontSize: FontSize.s12,
              ),
            ),
            Row(
              children: [
                const Icon(
                  Icons.location_on_outlined,
                  size: SizeManager.s20,
                ),
                const SizedBox(
                  width: SizeManager.s5,
                ),
                Text(
                  location,
                  style: getPoppinsRegularStyle(
                    color: ColorManager.categoryName,
                    fontSize: FontSize.s10,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  activePrice,
                  style: getPoppinsBoldStyle(
                    color: ColorManager.primary,
                    fontSize: FontSize.s20,
                  ),
                ),
                const SizedBox(
                  width: SizeManager.s15,
                ),
                Text(
                  discountPrice,
                  style: const TextStyle(
                    decoration: TextDecoration.lineThrough,
                    color: ColorManager.categoryName,
                    fontSize: FontSize.s15,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
