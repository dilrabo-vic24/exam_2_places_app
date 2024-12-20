import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:imtihon2_oy/utils/app_colors.dart';
import 'package:imtihon2_oy/utils/custom_text_style.dart';

class FacilityItemCard extends StatelessWidget {
  final String iconUrl;
  final String text;
  const FacilityItemCard({
    super.key,
    required this.iconUrl,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 10.h,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(10.r),
            ),
            color: AppColors.cardBackgroundColor,
          ),
          child: Column(
            children: [
              Image.asset(
                iconUrl,
                width: 25.w,
                height: 25.h,
              ),
              customTextStyle(
                  text: text,
                  textColor: AppColors.greyBackground,
                  fontSize: 10.sp)
            ],
          ),
        ),
        SizedBox(
          width: 15.w,
        ),
      ],
    );
  }
}