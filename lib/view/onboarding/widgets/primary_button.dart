import 'package:bounce/bounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travel_booking_app/resources/colors/app_colors.dart';
import 'package:travel_booking_app/resources/styles/app_typography.dart';

class PrimaryButton extends StatelessWidget {
  final int borderRadius;
  final String title;
  final VoidCallback onTap;
  const PrimaryButton({super.key, required this.onTap, required this.title, required this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return Bounce(
      onTap: onTap,
      duration: const Duration(milliseconds: 100),
      child: Container(
        width: Get.width,
        height: 45.h,
        decoration: BoxDecoration(
          color: AppColors.kOrangeColor,
          borderRadius: BorderRadius.circular(borderRadius.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: AppTypography.kLight10
                  .copyWith(color: AppColors.kWhiteColor.withOpacity(0.9)),
            ),
            Icon(
              Icons.arrow_right_alt_sharp,
              size: 18.sp,
              color: AppColors.kWhiteColor.withOpacity(0.7),
            ),
          ],
        ),
      ),
    );
  }
}


/* 
ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(Get.width, 45.h),
        backgroundColor: AppColors.kOrangeColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.r),
        ),
      ),
      onPressed: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Create new account',
            style: AppTypography.kLight10
                .copyWith(color: AppColors.kWhiteColor.withOpacity(0.9)),
          ),
          Icon(
            Icons.arrow_right_alt_sharp,
            size: 18.sp,
            color: AppColors.kWhiteColor.withOpacity(0.7),
          ),
        ],
      ),
    )
 */