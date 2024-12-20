import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:imtihon2_oy/presentations/widgets/details_image_card.dart';
import 'package:imtihon2_oy/presentations/widgets/faclity+item_card.dart';
import 'package:imtihon2_oy/presentations/widgets/star_icon.dart';
import 'package:imtihon2_oy/utils/app_colors.dart';
import 'package:imtihon2_oy/utils/app_icons.dart';
import 'package:imtihon2_oy/utils/custom_text_style.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 245, 250, 252),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const DetailImageCard(),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customTextStyle(
                  text: "Coeurdes Alpes",
                  fontSize: 24.sp,
                  textColor: AppColors.blackColor,
                  fontWeight: FontWeight.bold,
                ),
                customTextStyle(
                  text: "Show Map",
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  textColor: AppColors.mainColor,
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                const StarIcon(),
                SizedBox(
                  width: 10.w,
                ),
                customTextStyle(
                  text: "4.5(355 Reviews)",
                  fontSize: 12.sp,
                  textColor: AppColors.greyColor,
                ),
              ],
            ),
            customTextStyle(
              text:
                  "Aspen is as close as one can get to a storybook alpine town in United States of America. The choose-your-own-adventure possibilities—skiing, hiking, dining shopping and ....",
              fontSize: 14,
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                customTextStyle(
                  text: "Read More",
                  fontSize: 14.sp,
                  textColor: AppColors.mainColor,
                ),
                const Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: AppColors.mainColor,
                )
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            customTextStyle(
              text: "Facilities",
              fontSize: 24.sp,
              textColor: AppColors.blackColor,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 10.h),
            SizedBox(
              height: 63.h,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  FacilityItemCard(
                    iconUrl: AppIcons.wifi,
                    text: "1 Heater",
                  ),
                  FacilityItemCard(
                    iconUrl: AppIcons.food,
                    text: "Dinner",
                  ),
                  FacilityItemCard(
                    iconUrl: AppIcons.bathTub,
                    text: "1 Tub",
                  ),
                  FacilityItemCard(
                    iconUrl: AppIcons.frame,
                    text: "Pool",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customTextStyle(
                      text: "Price",
                      fontSize: 15.sp,
                      textColor: AppColors.blackColor,
                    ),
                    customTextStyle(
                      text: "\$199",
                      fontSize: 28.sp,
                      textColor: AppColors.greenColor,
                    ),
                  ],
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.mainColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.r),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        SizedBox(
                          width: 30.w,
                        ),
                        customTextStyle(
                          text: "Book Now",
                          fontSize: 16.sp,
                          textColor: AppColors.whiteColor,
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: AppColors.whiteColor,
                          size: 20.w,
                        ),
                        SizedBox(
                          width: 30.w,
                        ),
                      ],
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
