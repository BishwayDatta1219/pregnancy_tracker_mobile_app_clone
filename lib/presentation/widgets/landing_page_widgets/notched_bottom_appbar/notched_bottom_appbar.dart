import 'package:flutter/material.dart';
import 'package:pregnancy_tracker_mobile_app_clone/core/config/theme_management/app_colors.dart';
import '../../../../core/config/asset_management/app_icons.dart';

class NotchedBottomAppbar extends StatelessWidget {
  int selectedIndex;
  ValueChanged<int> onIndexChanged;

  NotchedBottomAppbar({
    super.key,
    required this.selectedIndex,
    required this.onIndexChanged,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(25.0),
        topRight: Radius.circular(25.0),
      ),
      child: BottomAppBar(
        notchMargin: 10.0,
        shape: CircularNotchedRectangle(),
        color: AppColors.bottomAppBarColor,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                _buildBottomAppBarIcon(
                  index: 0,
                  onPressed: () => onIndexChanged(0),
                  iconName: AppIcons.bottomBarHomeIcon,
                  iconSize: AppIconSizes.bottomBarIconSize,
                  iconColor:
                      selectedIndex == 0
                          ? AppColors.bottomAppBarIconSelectionColor
                          : AppColors.bottomAppBarIconDefaultColor,
                ),
                _buildBottomAppBarIcon(
                  index: 1,
                  onPressed: () => onIndexChanged(1),
                  iconName: AppIcons.bottomBarMedicalIcon,
                  iconSize: AppIconSizes.bottomBarIconSize,
                  iconColor:
                      selectedIndex == 1
                          ? AppColors.bottomAppBarIconSelectionColor
                          : AppColors.bottomAppBarIconDefaultColor,
                ),
              ],
            ),
            Row(
              children: [
                _buildBottomAppBarIcon(
                  index: 2,
                  onPressed: () => onIndexChanged(2),
                  iconName: AppIcons.bottomBarCounterIcon,
                  iconSize: AppIconSizes.bottomBarIconSize,
                  iconColor:
                      selectedIndex == 2
                          ? AppColors.bottomAppBarIconSelectionColor
                          : AppColors.bottomAppBarIconDefaultColor,
                ),
                _buildBottomAppBarIcon(
                  index: 3,
                  onPressed: () => onIndexChanged(3),
                  iconName: AppIcons.bottomBarProfileIcon,
                  iconSize: AppIconSizes.bottomBarIconSize,
                  iconColor:
                      selectedIndex == 3
                          ? AppColors.bottomAppBarIconSelectionColor
                          : AppColors.bottomAppBarIconDefaultColor,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomAppBarIcon({
    required int index,
    required IconData iconName,
    required double iconSize,
    Color? iconColor,
    required final VoidCallback onPressed,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: IconButton(
        onPressed: onPressed,
        icon: Container(
          width: 50.0,
          height: 50.0,
          color: Colors.transparent,
          child: Icon(iconName, size: iconSize, color: iconColor),
        ),
      ),
    );
  }
}
