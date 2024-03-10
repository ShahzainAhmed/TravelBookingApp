import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:like_button/like_button.dart';
import 'package:travel_booking_app/resources/assets/image_assets.dart';
import 'package:travel_booking_app/resources/colors/app_colors.dart';
import 'package:travel_booking_app/resources/styles/app_typography.dart';

class BannerCard extends StatelessWidget {
  const BannerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: Pulse(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          height: 330.h,
          width: Get.width,
          decoration: BoxDecoration(
            color: AppColors.kOrangeColor,
            borderRadius: BorderRadius.circular(20.r),
            boxShadow: [
              BoxShadow(
                color: AppColors.kBlackColor.withOpacity(0.2),
                offset: const Offset(0, 2),
                blurRadius: 10,
              ),
            ],
            image: DecorationImage(
              image: const AssetImage(ImageAssets.kPicture1),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                AppColors.kOrangeColor.withOpacity(0.4),
                BlendMode.overlay,
              ),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.kWhiteColor.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
                    child: Text(
                      "Pyramid",
                      style: AppTypography.kLight10.copyWith(
                        color: AppColors.kWhiteColor.withOpacity(0.7),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "What to do",
                    style: AppTypography.kLight10
                        .copyWith(color: AppColors.kWhiteColor),
                  ),
                  SizedBox(width: 10.w),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 4.w),
                    decoration: BoxDecoration(
                      color: AppColors.kOrangeColor,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Icon(
                      Icons.arrow_right_alt_sharp,
                      color: AppColors.kWhiteColor.withOpacity(0.8),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Egyptian Pyramids",
                          style: AppTypography.kBold20
                              .copyWith(color: AppColors.kWhiteColor),
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          "A pyramid is a structure whose valuable surfaces are triangular to a point at the top making the shape roughly a pyramid.",
                          style: AppTypography.kLight10
                              .copyWith(color: AppColors.kVeryLighGreyColor),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: AppColors.kWhiteColor.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: LikeButton(
                      padding: EdgeInsets.zero,
                      size: 20,
                      circleColor: const CircleColor(
                        start: AppColors.kYellowColor,
                        end: AppColors.kYellowColor,
                      ),
                      bubblesColor: const BubblesColor(
                        dotPrimaryColor: AppColors.kYellowColor,
                        dotSecondaryColor: AppColors.kYellowColor,
                      ),
                      likeBuilder: (bool isLiked) {
                        return Icon(
                          isLiked ? Icons.bookmark : Icons.bookmark_border,
                          color: isLiked
                              ? AppColors.kYellowColor
                              : AppColors.kWhiteColor,
                          size: 20,
                        );
                      },
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
