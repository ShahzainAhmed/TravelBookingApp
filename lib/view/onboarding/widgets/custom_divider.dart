import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_booking_app/resources/colors/app_colors.dart';
import 'package:travel_booking_app/resources/styles/app_typography.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Expanded(
          child: Divider(
            color: AppColors.kVeryLighGreyColor,
            thickness: 1.5,
          ),
        ),
        SizedBox(width: 10.w),
        Text(
          "OR",
          style: AppTypography.kMedium14
              .copyWith(color: AppColors.kLightGreyColor),
        ),
        SizedBox(width: 10.w),
        const Expanded(
          child: Divider(
            color: AppColors.kVeryLighGreyColor,
            thickness: 1.5,
          ),
        ),
      ],
    );
  }
}
