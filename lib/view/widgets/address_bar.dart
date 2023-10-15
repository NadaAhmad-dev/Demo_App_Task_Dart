import 'package:demo_app_task/utils/utils.dart';
import 'package:flutter/material.dart';

Widget addressBar(BuildContext context, String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: PaddingManager.p20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: adjustHeightValue(
            context,
            SizeManager.s40,
          ),
          width: adjustWidthValue(
            context,
            SizeManager.s160,
          ),
          decoration: BoxDecoration(
              color: ColorManager.primary,
              borderRadius: BorderRadius.only(
                bottomLeft:
                    Radius.circular(adjustValue(context, SizeManager.s50)),
                topLeft: Radius.circular(adjustValue(context, SizeManager.s50)),
                bottomRight:
                    Radius.circular(adjustValue(context, SizeManager.s20)),
                topRight:
                    Radius.circular(adjustValue(context, SizeManager.s80)),
              )),
          child: Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                size: adjustValue(
                  context,
                  SizeManager.s25,
                ),
                color: ColorManager.white,
              ),
              Text(
                text,
                style: getPoppinsBoldStyle(
                  color: ColorManager.white,
                  fontSize: adjustValue(
                    context,
                    FontSize.s16,
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          height: adjustHeightValue(
            context,
            SizeManager.s40,
          ),
          width: adjustWidthValue(
            context,
            SizeManager.s40,
          ),
          decoration: BoxDecoration(
            color: ColorManager.white,
            shape: BoxShape.circle,
            border: Border.all(
              color: ColorManager.stroke,
              width: adjustWidthValue(
                context,
                SizeManager.s2,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
