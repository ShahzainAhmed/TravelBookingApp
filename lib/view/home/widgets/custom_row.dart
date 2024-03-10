import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_booking_app/resources/colors/app_colors.dart';
import 'package:travel_booking_app/resources/styles/app_typography.dart';

class CustomRow extends StatelessWidget {
  final String title;
  const CustomRow({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: Row(
        children: [
          Text(title, style: AppTypography.kBold16),
          const Spacer(),
          Text(
            "See all",
            style:
                AppTypography.kLight12.copyWith(color: AppColors.kOrangeColor),
          ),
          SizedBox(width: 10.w),
          Container(
            decoration: BoxDecoration(
              color: AppColors.kOrangeColor,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Icon(
              Icons.arrow_right_alt_sharp,
              color: AppColors.kWhiteColor.withOpacity(0.8),
            ),
          )
        ],
      ),
    );
  }
}
