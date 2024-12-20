import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:imtihon2_oy/utils/app_colors.dart';

class NavigatorElevatedButton extends StatelessWidget {
  final Widget navigatorScreen;
  final String text;
  const NavigatorElevatedButton({
    super.key,
    required this.navigatorScreen,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(double.infinity, 44.h),
          backgroundColor: AppColors.mainColor,
          alignment: Alignment.center,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => navigatorScreen),
          );
        },
        child: Text(
          text,
          style: TextStyle(
            color: AppColors.whiteColor,
            fontFamily: "Montserrat",
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
          ),
        ));
  }
}
