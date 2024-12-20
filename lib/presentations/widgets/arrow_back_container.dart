import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:imtihon2_oy/presentations/screens/explore_screen.dart';
import 'package:imtihon2_oy/utils/app_colors.dart';

class ArrowBackContainer extends StatelessWidget {
  const ArrowBackContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10.r),
          ),
          color: AppColors.whiteColor),
      child: IconButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const ExploreScreen()),
          );
        },
        icon: const Icon(
          Icons.arrow_back_ios_new,
          color: AppColors.greyColor,
        ),
      ),
    );
  }
}