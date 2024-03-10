import 'package:flutter/material.dart';
import 'package:travel_booking_app/resources/colors/app_colors.dart';
import 'package:travel_booking_app/resources/styles/app_typography.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      iconSize: 20,
      currentIndex: currentIndex,
      onTap: onTap,
      backgroundColor: Colors.white,
      selectedItemColor: AppColors.kOrangeColor,
      unselectedItemColor: AppColors.kLightGreyColor.withOpacity(0.4),
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: true,
      selectedLabelStyle: AppTypography.kLight10,
      unselectedLabelStyle: AppTypography.kLight10,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.public),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people_outline_outlined),
          label: 'Community',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bookmark_outline),
          label: 'Favorites',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings_outlined),
          label: 'Settings',
        ),
      ],
    );
  }
}
