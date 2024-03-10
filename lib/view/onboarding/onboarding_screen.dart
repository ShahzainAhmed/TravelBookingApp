import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_booking_app/resources/assets/image_assets.dart';
import 'package:travel_booking_app/resources/colors/app_colors.dart';
import 'package:travel_booking_app/resources/styles/app_typography.dart';
import 'package:travel_booking_app/view/onboarding/widgets/auth_container.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage(ImageAssets.kCover),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.deepOrange.withAlpha(50),
              BlendMode.overlay,
            ),
          ),
        ),
        alignment: Alignment.bottomCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: AnimatedTextKit(animatedTexts: [
                TyperAnimatedText(
                  "Discover\nthe best lovely\nplaces!",
                  textStyle: AppTypography.kExtraBold22
                      .copyWith(color: AppColors.kWhiteColor),
                  speed: const Duration(milliseconds: 100),
                ),
              ]),
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.only(left: 20.w, bottom: 30.h),
              child: Text(
                "Let Trip Planner guide you",
                style: AppTypography.kLight14
                    .copyWith(color: AppColors.kWhiteColor.withOpacity(0.5)),
              ),
            ),
            const AuthContainer(),
          ],
        ),
      ),
    );
  }
}
