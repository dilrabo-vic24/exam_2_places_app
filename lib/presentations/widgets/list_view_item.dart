import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:imtihon2_oy/utils/app_colors.dart';
import 'package:imtihon2_oy/utils/custom_text_style.dart';

class ListViewItem extends StatelessWidget {
  final Color? backgroundColor;
  final Color? textColor;
  final String text;

  const ListViewItem({
    super.key,
    this.backgroundColor,
    this.textColor,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.r)),
            color: backgroundColor ?? const Color.fromARGB(255, 240, 233, 233)),
        child: customTextStyle(
          text: text,
          textColor: textColor ?? AppColors.greyColor,
          fontSize: 14.sp,
        ),
      ),
    );
  }
}