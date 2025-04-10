import 'package:flutter/material.dart';
import 'package:pregnancy_tracker_mobile_app_clone/core/config/asset_management/app_images.dart';
import 'package:pregnancy_tracker_mobile_app_clone/core/config/theme_management/app_colors.dart';

class CustomFAB extends StatelessWidget {
  const CustomFAB({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      elevation: 3.0,
      shape: CircleBorder(),
      child: Container(
        width: 100.0,
        height: 100.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              AppColors.fabButtonGradientStart,
              AppColors.fabButtonGradientEnd,
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.fabButtonGradientEnd.withValues(alpha: 0.3),
              spreadRadius: 1.0,
              blurRadius: 4.0,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: Center(
          child: Image(
            image: AssetImage(AppImages.fabIcon),
            width: 30.0,
            height: 30.0,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
