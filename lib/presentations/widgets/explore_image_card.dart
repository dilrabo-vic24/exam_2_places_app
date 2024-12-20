import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:imtihon2_oy/utils/app_colors.dart';
import 'package:imtihon2_oy/utils/custom_text_style.dart';

class ExploreImageCard extends StatelessWidget {
  final String imageUrl;
  final String placeName;
  final String text;
  const ExploreImageCard({
    super.key,
    required this.imageUrl,
    required this.placeName,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.h),
      child: Stack(
        children: [
          Container(
            height: 200.h,
            padding: EdgeInsets.only(bottom: 15.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.r)),
              color: const Color.fromARGB(255, 253, 248, 248),
            ),
          ),
          Positioned(child: Image.asset(imageUrl)),
          Positioned(
            top: 100,
            child: customTextStyle(
              text: placeName,
              fontSize: 15.sp,
              textColor: AppColors.blackColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Positioned(
            top: 70.h,
            left: 110.w,
            child: Container(
              padding: EdgeInsets.all(5.w),
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors.whiteColor),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.r),
                  ),
                  color: AppColors.greyBackground),
              child: customTextStyle(
                text: text,
                textColor: AppColors.whiteColor,
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
