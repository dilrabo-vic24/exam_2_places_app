import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:imtihon2_oy/presentations/widgets/arrow_back_container.dart';
import 'package:imtihon2_oy/utils/app_colors.dart';
import 'package:imtihon2_oy/utils/app_images.dart';

class DetailImageCard extends StatelessWidget {
  const DetailImageCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 320.h,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.r),
                  ),
                ),
                child: Image.asset(AppImages.detailsImage),
              ),
              const Positioned(
                child: ArrowBackContainer(),
              ),
            ],
          ),
        ),
        Positioned(
          top: 280.h,
          left: 270.w,
          child: Container(
            padding: EdgeInsets.all(10.w),
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: AppColors.whiteColor),
            child: const Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          ),
        )
      ],
    );
  }
}