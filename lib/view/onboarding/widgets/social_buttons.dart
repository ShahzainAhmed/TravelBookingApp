import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_booking_app/resources/colors/app_colors.dart';

class SocialButtons extends StatelessWidget {
  final String logo;
  const SocialButtons({super.key, required this.logo});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 40.w,
      decoration: BoxDecoration(
        color: AppColors.kWhiteColor,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: AppColors.kBlackColor.withOpacity(0.2),
            offset: const Offset(0, 2),
            blurRadius: 5.r,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(logo, height: 20.h),
        ],
      ),
    );
  }
}
