import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travel_booking_app/resources/assets/image_assets.dart';
import 'package:travel_booking_app/resources/colors/app_colors.dart';
import 'package:travel_booking_app/resources/styles/app_typography.dart';
import 'package:travel_booking_app/view/home/home_screen.dart';
import 'package:travel_booking_app/view/onboarding/widgets/custom_divider.dart';
import 'package:travel_booking_app/view/onboarding/widgets/primary_button.dart';
import 'package:travel_booking_app/view/onboarding/widgets/social_buttons.dart';

class AuthContainer extends StatelessWidget {
  const AuthContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
      decoration: BoxDecoration(
        color: AppColors.kWhiteColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.r),
          topRight: Radius.circular(30.r),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.kBlackColor.withOpacity(0.2),
            offset: const Offset(0, -2),
            blurRadius: 5.r,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          PrimaryButton(
              title: "Create new account",
              borderRadius: 30,
              onTap: () => Get.to(const HomeScreen())),
          SizedBox(height: 15.h),
          Text(
            "I already have an account",
            style: AppTypography.kBold12,
          ),
          SizedBox(height: 15.h),
          const CustomDivider(),
          SizedBox(height: 15.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50.w),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SocialButtons(logo: ImageAssets.kLogo1),
                SocialButtons(logo: ImageAssets.kLogo2),
                SocialButtons(logo: ImageAssets.kLogo3),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
