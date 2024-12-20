import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:imtihon2_oy/presentations/widgets/star_icon.dart';
import 'package:imtihon2_oy/utils/app_colors.dart';
import 'package:imtihon2_oy/utils/custom_text_style.dart';

class PlaceCardDetail extends StatelessWidget {
  const PlaceCardDetail({
    super.key,
    required this.imageUrl,
    required this.placeName,
    required this.starAmount,
    this.navigatorScreen,
  });

  final String imageUrl;
  final String placeName;
  final String starAmount;
  final Widget? navigatorScreen;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (navigatorScreen != null) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => navigatorScreen!,
            ),
          );
        }
      },
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10.r),
              ),
            ),
            child: Image.asset(imageUrl),
          ),
          Positioned(
            top: 150.h,
            left: 20.w,
            child: Container(
              padding: EdgeInsets.all(3.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.r)),
                  color: AppColors.greyBackground),
              child: customTextStyle(
                  text: placeName,
                  fontSize: 12.sp,
                  textColor: AppColors.whiteColor),
            ),
          ),
          Positioned(
            top: 170.h,
            left: 20.w,
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 3.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.r)),
                    color: AppColors.greyBackground),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const StarIcon(),
                    SizedBox(width: 10.w),
                    customTextStyle(
                      text: starAmount,
                      textColor: AppColors.whiteColor,
                      fontSize: 10.sp,
                    )
                  ],
                )),
          ),
          Positioned(
            top: 170.h,
            left: 140.w,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 3.h),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: AppColors.whiteColor),
              child: Icon(
                Icons.favorite,
                color: Colors.red,
                size: 12.h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
