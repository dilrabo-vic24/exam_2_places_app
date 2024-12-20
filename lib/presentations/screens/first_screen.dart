import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:imtihon2_oy/presentations/screens/explore_screen.dart';
import 'package:imtihon2_oy/presentations/widgets/navigator_elevated_button.dart';
import 'package:imtihon2_oy/utils/app_colors.dart';
import 'package:imtihon2_oy/utils/app_images.dart';
import 'package:imtihon2_oy/utils/custom_text_style.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.gradientStartColor,
                  AppColors.gradientEndColor
                ],
              ),
            ),
            child: Image.asset(AppImages.mainImage),
          ),
          Padding(
            padding: EdgeInsets.all(25.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: customTextStyle(
                      text: "Aspen",
                      fontFamily: "Hiatus",
                      fontSize: 136.sp,
                      textColor: AppColors.whiteColor),
                ),
                const Spacer(),
                customTextStyle(
                  text: "Plan your",
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w900,
                  textColor: AppColors.whiteColor,
                ),
                customTextStyle(
                  text: "Luxurious",
                  fontSize: 55.sp,
                  fontWeight: FontWeight.w900,
                  textColor: AppColors.whiteColor,
                ),
                customTextStyle(
                  text: "Vacation",
                  fontSize: 55.sp,
                  fontWeight: FontWeight.w900,
                  textColor: AppColors.whiteColor,
                ),
                SizedBox(
                  height: 10.h,
                ),
                const NavigatorElevatedButton(
                  navigatorScreen: ExploreScreen(),
                  text: "Explore",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
