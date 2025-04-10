import 'package:flutter/material.dart';
import 'package:pregnancy_tracker_mobile_app_clone/core/config/theme_management/app_colors.dart';
import 'package:pregnancy_tracker_mobile_app_clone/core/config/theme_management/app_text_style.dart';
import '../../../../core/config/asset_management/app_icons.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  String appbarTitle;

  CustomAppBar({super.key, required this.appbarTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(appbarTitle, style: AppTextStyle.appbarTitleTextStyle),
        centerTitle: true,
        leading: _buildIconButton(
          iconName: AppIcons.appbarBackArrow,
          iconSize: AppIconSizes.appbarIconSize,
          iconColor: AppColors.appbarIconColor,
        ),
        actions: [
          _buildIconButton(
            iconName: AppIcons.appbarNotification,
            iconSize: AppIconSizes.appbarIconSize,
            iconColor: AppColors.appbarIconColor,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  Widget _buildIconButton({
    required IconData iconName,
    required double iconSize,
    required Color iconColor,
  }) {
    return IconButton(
      onPressed: () {},
      icon: Container(
        width: 50.0,
        height: 50.0,
        decoration: BoxDecoration(
          color: AppColors.iconBackDropColor,
          shape: BoxShape.circle,
        ),
        child: Center(child: Icon(iconName, size: iconSize, color: iconColor)),
      ),
    );
  }
}
