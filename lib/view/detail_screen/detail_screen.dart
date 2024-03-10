import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:like_button/like_button.dart';
import 'package:travel_booking_app/models/categories_model.dart';
import 'package:travel_booking_app/resources/colors/app_colors.dart';
import 'package:travel_booking_app/resources/styles/app_typography.dart';
import 'package:travel_booking_app/view/onboarding/widgets/primary_button.dart';

class DetailScreen extends StatefulWidget {
  final CategoriesModel categoriesModel;
  const DetailScreen({super.key, required this.categoriesModel});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool animate = true;
  late AnimationController controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
            iconSize: 20,
            onPressed: () async {
              setState(() {
                animate = !animate;
              });
              await Future.delayed(const Duration(milliseconds: 800));
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: AppColors.kBlackColor,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FadeInRight(
              animate: animate,
              controller: (controller) => controller = controller,
              delay: const Duration(milliseconds: 300),
              child: Container(
                height: 220.h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.categoriesModel.image),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(16.r),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            FadeInRight(
              animate: animate,
              delay: const Duration(milliseconds: 400),
              child: Text(
                widget.categoriesModel.title,
                style: AppTypography.kBold20
                    .copyWith(color: AppColors.kBlackColor),
              ),
            ),
            FadeInRight(
              animate: animate,
              delay: const Duration(milliseconds: 500),
              child: RatingBar.builder(
                unratedColor: AppColors.kLightGreyColor.withOpacity(0.3),
                initialRating: widget.categoriesModel.starRating,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 16.0,
                itemBuilder: (context, _) =>
                    const Icon(Icons.star, color: AppColors.kOrangeColor),
                onRatingUpdate: (rating) {},
              ),
            ),
            SizedBox(height: 15.h),
            FadeInRight(
              animate: animate,
              delay: const Duration(milliseconds: 600),
              child: Text(
                widget.categoriesModel.description,
                maxLines: 9,
                style: AppTypography.kMedium12.copyWith(
                  color: AppColors.kLightGreyColor.withOpacity(0.5),
                  height: 2,
                ),
              ),
            ),
            const Spacer(),
            FadeInRight(
              animate: animate,
              delay: const Duration(milliseconds: 700),
              child: Row(
                children: [
                  Container(
                    height: 44.h,
                    width: 44.w,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.withOpacity(0.5)),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: LikeButton(
                      padding: EdgeInsets.zero,
                      size: 20,
                      circleColor: const CircleColor(
                        start: AppColors.kOrangeColor,
                        end: AppColors.kOrangeColor,
                      ),
                      bubblesColor: const BubblesColor(
                        dotPrimaryColor: AppColors.kOrangeColor,
                        dotSecondaryColor: AppColors.kOrangeColor,
                      ),
                      likeBuilder: (bool isLiked) {
                        return Icon(
                          isLiked ? Icons.bookmark : Icons.bookmark_border,
                          color: isLiked
                              ? AppColors.kOrangeColor
                              : AppColors.kOrangeColor,
                          size: 20,
                        );
                      },
                    ),
                  ),
                  SizedBox(width: 15.w),
                  Expanded(
                    child: PrimaryButton(
                        title: "Book Now", borderRadius: 10, onTap: () {}),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
