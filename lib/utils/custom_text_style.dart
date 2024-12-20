import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:imtihon2_oy/utils/app_colors.dart';

Widget customTextStyle({
  required String text,
  String? fontFamily,
  double? fontSize,
  FontWeight? fontWeight,
  Color? textColor,
}) {
  return Align(
    alignment: Alignment.centerLeft,
    child: Text(
      textDirection: TextDirection.ltr,
      overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.left,
      text,
      maxLines: 4,
      style: TextStyle(
        fontSize: fontSize ?? 14.sp,
        fontWeight: fontWeight ?? FontWeight.bold,
        color: textColor ?? AppColors.greyColor,
        fontFamily: fontFamily ?? "Montserrat",
      ),
    ),
  );
}
