import 'package:demo_app_task/model/category_model.dart';
import 'package:demo_app_task/utils/utils.dart';
import 'package:flutter/material.dart';

Widget categoryItem(BuildContext context, CategoryModel categoryModel) {
  return Column(
    children: [
      categoryModel.shape,
      SizedBox(
        height: adjustHeightValue(
          context,
          SizeManager.s12,
        ),
      ),
      Text(
        categoryModel.name,
        style: getPoppinsMediumStyle(
          color: ColorManager.categoryName,
          fontSize: adjustValue(
            context,
            FontSize.s10,
          ),
        ),
      ),
    ],
  );
}
