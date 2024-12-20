import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:imtihon2_oy/utils/app_colors.dart';

class SearchTextFormField extends StatelessWidget {
  const SearchTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Find thing to do",
        fillColor: AppColors.cardBackgroundColor,
        filled: true,
        prefixIcon: const Icon(Icons.search),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.r),
            ),
            borderSide: BorderSide.none),
      ),
    );
  }
}
