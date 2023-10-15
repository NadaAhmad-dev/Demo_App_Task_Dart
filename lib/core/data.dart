import 'package:demo_app_task/model/address_model.dart';
import 'package:demo_app_task/model/category_model.dart';
import 'package:demo_app_task/utils/utils.dart';
import 'package:demo_app_task/view/widgets/category_shape.dart';


List<AddressModel> addresses = [
  AddressModel(
    title1: 'Home Address',
    title2: 'Mustafa St.No:2',
    title3: 'Street x12',
  ),
  AddressModel(
    title1: 'Office Address',
    title2: 'Axis Istanbul',
    title3: 'Floor 2, Office 11',
  ),
];

//====================//
List<CategoryModel> categories = [
  CategoryModel(
    name: 'Steak',
    shape: categoryShape(ColorManager.steak),
  ),
  CategoryModel(
    name: 'Vegetables',
    shape: categoryShape(ColorManager.vegetables),
  ),
  CategoryModel(
    name: 'Beverages',
    shape: categoryShape(ColorManager.beverages),
  ),
  CategoryModel(
    name: 'Fish',
    shape: categoryShape(ColorManager.fish),
  ),
  CategoryModel(
    name: 'Juice',
    shape: categoryShape(ColorManager.juice),
  ),
];



