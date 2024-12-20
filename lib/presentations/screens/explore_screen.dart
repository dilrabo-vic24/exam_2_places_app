import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:imtihon2_oy/presentations/screens/details_screen.dart';
import 'package:imtihon2_oy/presentations/widgets/explore_image_card.dart';
import 'package:imtihon2_oy/presentations/widgets/list_view_item.dart';
import 'package:imtihon2_oy/presentations/widgets/place_card.dart';
import 'package:imtihon2_oy/presentations/widgets/search_text_form_fiels.dart';
import 'package:imtihon2_oy/utils/app_colors.dart';
import 'package:imtihon2_oy/utils/app_images.dart';
import 'package:imtihon2_oy/utils/custom_text_style.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: customTextStyle(
          text: "Explore",
          fontSize: 14.sp,
          textColor: AppColors.blackColor,
        ),
        actions: [
          Icon(
            Icons.location_on_outlined,
            color: AppColors.mainColor,
            size: 12.w,
          ),
          customTextStyle(
            text: "Aspen, USA ",
            fontSize: 12.sp,
            textColor: AppColors.blackShriftColor,
          ),
          Icon(
            Icons.keyboard_arrow_down,
            color: AppColors.mainColor,
            size: 12.w,
          ),
          SizedBox(
            width: 8.w,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customTextStyle(
                text: "Aspen",
                fontSize: 32.sp,
                textColor: AppColors.blackColor,
                fontWeight: FontWeight.w900,
              ),
              const SearchTextFormField(),
              SizedBox(height: 10.h),
              SizedBox(
                height: 45,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    ListViewItem(
                      text: "Location",
                      textColor: AppColors.mainColor,
                      backgroundColor: AppColors.cardBackgroundColor,
                    ),
                    ListViewItem(text: "Hotels"),
                    ListViewItem(text: "Food"),
                    ListViewItem(text: "Adventure"),
                    ListViewItem(text: "Culture"),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customTextStyle(
                    text: "Popular",
                    fontSize: 18.sp,
                    textColor: AppColors.blackColor,
                    fontWeight: FontWeight.bold,
                  ),
                  customTextStyle(
                    text: "Se all",
                    fontSize: 12.sp,
                    textColor: AppColors.mainColor,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 200.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    PlaceCardDetail(
                      imageUrl: AppImages.image1,
                      placeName: "Alley Palace",
                      starAmount: "4.1",
                    ),
                    PlaceCardDetail(
                      imageUrl: AppImages.image2,
                      placeName: "Coueurdes Alpes",
                      starAmount: "4.5",
                      navigatorScreen: DetailsScreen(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              customTextStyle(
                text: "Recommended",
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                textColor: AppColors.blackColor,
              ),
              SizedBox(
                height: 200.h,
                child:
                    ListView(scrollDirection: Axis.horizontal, children: const [
                  ExploreImageCard(
                    imageUrl: AppImages.image3,
                    placeName: "Explore Aspen",
                    text: "4N/5N",
                  ),
                  ExploreImageCard(
                    imageUrl: AppImages.image4,
                    placeName: "Luxurious Aspen",
                    text: "2N/3D",
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: AppColors.mainColor,
            ),
            label: "Home Screen",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.airplane_ticket_outlined,
              color: AppColors.greyColor,
            ),
            label: "Ticket",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border_outlined,
              color: AppColors.greyColor,
            ),
            label: "Favourite",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outlined,
              color: AppColors.greyColor,
            ),
            label: "Personal",
          ),
        ],
      ),
    );
  }
}
