import 'package:demo_app_task/utils/utils.dart';
import 'package:flutter/material.dart';

TextStyle _getPoppinsTextStyle({
  required Color color,
  required FontWeight fontWeight,
  required double fontSize,
}) {
  return TextStyle(
    fontFamily: FontFamily.poppins,
    color: color,
    fontWeight: fontWeight,
    fontSize: fontSize,
  );
}

// bold

TextStyle getPoppinsBoldStyle({
  required Color color,
  required double fontSize,
}) {
  return _getPoppinsTextStyle(
    fontSize: fontSize,
    fontWeight: FontWeightManager.bold,
    color: color,
  );
}

// regular
TextStyle getPoppinsRegularStyle({
  required Color color,
  required double fontSize,
}) {
  return _getPoppinsTextStyle(
    fontSize: fontSize,
    fontWeight: FontWeightManager.regular,
    color: color,
  );
}

TextStyle getPoppinsMediumStyle({
  required Color color,
  required double fontSize,
}) {
  return _getPoppinsTextStyle(
    fontSize: fontSize,
    fontWeight: FontWeightManager.medium,
    color: color,
  );
}

// light style
TextStyle getPoppinsLightStyle({
  required Color color,
  required double fontSize,
}) {
  return _getPoppinsTextStyle(
    fontSize: fontSize,
    fontWeight: FontWeightManager.light,
    color: color,
  );
}

List<BoxShadow> myShadow({
  double opacity = 0.3,
}) =>
    [
      BoxShadow(
        color: Colors.grey.withOpacity(opacity),
        spreadRadius: 1,
        blurRadius: 4,
        offset: const Offset(0, 1), // changes position of shadow
      ),
    ];
