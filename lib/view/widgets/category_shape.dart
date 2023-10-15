import 'package:demo_app_task/utils/utils.dart';
import 'package:flutter/cupertino.dart';

Widget categoryShape(Color color) {
  return Container(
    height: SizeManager.s60,
    width: SizeManager.s60,
    decoration: BoxDecoration(
      color: color,
      borderRadius: const BorderRadius.all(
        Radius.circular(SizeManager.s15),
      ),
    ),
  );
}
