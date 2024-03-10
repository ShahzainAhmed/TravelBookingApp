import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_booking_app/models/categories_model.dart';
import 'package:travel_booking_app/resources/colors/app_colors.dart';
import 'package:travel_booking_app/resources/styles/app_typography.dart';

class CategoriesCards extends StatelessWidget {
  final VoidCallback onTap;
  final CategoriesModel categoriesModel;
  const CategoriesCards(
      {super.key, required this.categoriesModel, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: 90.h,
            width: 90.w,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(categoriesModel.image), fit: BoxFit.cover),
              color: AppColors.kOrangeColor,
              borderRadius: BorderRadius.circular(16.r),
            ),
          ),
        ),
        SizedBox(height: 5.h),
        Text(categoriesModel.title, style: AppTypography.kBold12),
      ],
    );
  }
}
