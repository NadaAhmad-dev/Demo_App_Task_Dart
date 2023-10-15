import 'package:demo_app_task/model/address_model.dart';
import 'package:demo_app_task/utils/utils.dart';
import 'package:flutter/cupertino.dart';

Widget addressItem(BuildContext context, AddressModel addressModel) {
  return Container(
    height: adjustHeightValue(
      context,
      SizeManager.s70,
    ),
    width: adjustWidthValue(
      context,
      SizeManager.s150,
    ),
    decoration: BoxDecoration(
      color: ColorManager.white,
      borderRadius: BorderRadius.all(
        Radius.circular(adjustValue(context, SizeManager.s15)),
      ),
      border: Border.all(
        color: ColorManager.addressStroke,
        width: adjustValue(context, SizeManager.s2),
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: adjustHeightValue(
            context,
            SizeManager.s45,
          ),
          width: adjustWidthValue(
            context,
            SizeManager.s45,
          ),
          decoration: BoxDecoration(
            color: ColorManager.addressSqr,
            borderRadius: BorderRadius.all(
              Radius.circular(adjustValue(
                context,
                SizeManager.s12,
              )),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              addressModel.title1,
              overflow: TextOverflow.ellipsis,
              style: getPoppinsBoldStyle(
                color: ColorManager.titleColor,
                fontSize: adjustValue(
                  context,
                  FontSize.s10,
                ),
              ),
            ),
            Text(
              addressModel.title2,
              overflow: TextOverflow.ellipsis,
              style: getPoppinsRegularStyle(
                color: ColorManager.titleColor,
                fontSize: adjustValue(
                  context,
                  FontSize.s8,
                ),
              ),
            ),
            Text(
              addressModel.title3,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: getPoppinsRegularStyle(
                color: ColorManager.titleColor,
                fontSize: adjustValue(
                  context,
                  FontSize.s8,
                ),
              ),
            ),
          ],
        )
      ],
    ),
  );
}
