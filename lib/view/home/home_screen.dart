import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:travel_booking_app/models/categories_model.dart';
import 'package:travel_booking_app/resources/assets/image_assets.dart';
import 'package:travel_booking_app/resources/colors/app_colors.dart';
import 'package:travel_booking_app/resources/styles/app_typography.dart';
import 'package:travel_booking_app/view/detail_screen/detail_screen.dart';
import 'package:travel_booking_app/view/home/widgets/banner_card.dart';
import 'package:travel_booking_app/view/home/widgets/bottom_navigation_bar.dart';
import 'package:travel_booking_app/view/home/widgets/categories_cards.dart';
import 'package:travel_booking_app/view/home/widgets/custom_row.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {},
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              backgroundColor: AppColors.kVeryLighGreyColor,
              child: Image.asset(ImageAssets.kProfile),
            ),
            Text('Discover Places', style: AppTypography.kExtraBold16),
            const CircleAvatar(
              backgroundColor: AppColors.kVeryLighGreyColor,
              child: Icon(Icons.search),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const BannerCard(),
            Container(
              decoration: BoxDecoration(
                color: AppColors.kWhiteColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.r),
                    topRight: Radius.circular(30.r)),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.kBlackColor.withOpacity(0.1),
                    offset: const Offset(0, 2),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Column(
                children: [
                  const CustomRow(title: "Category"),
                  SizedBox(
                    height: 120.h,
                    child: ElasticIn(
                      child: ListView.separated(
                        padding: EdgeInsets.only(left: 20.w),
                        separatorBuilder: (context, index) =>
                            SizedBox(width: 10.w),
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        itemCount: categoriesList.length,
                        itemBuilder: (context, index) {
                          return CategoriesCards(
                              onTap: () => Get.to(Hero(
                                    tag: categoriesList[index].image,
                                    child: DetailScreen(
                                        categoriesModel: categoriesList[index]),
                                  )),
                              categoriesModel: categoriesList[index]);
                        },
                      ),
                    ),
                  ),
                  const CustomRow(title: "Favourite Places"),
                  SizedBox(
                    height: 120.h,
                    child: ElasticIn(
                      child: ListView.separated(
                        padding: EdgeInsets.only(left: 20.w),
                        separatorBuilder: (context, index) =>
                            SizedBox(width: 10.w),
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        itemCount: categoriesList.length,
                        itemBuilder: (context, index) {
                          return CategoriesCards(
                              onTap: () => Get.to(DetailScreen(
                                  categoriesModel: categoriesList[index])),
                              categoriesModel:
                                  categoriesList.reversed.toList()[index]);
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 40.h)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
