import 'package:flutter/material.dart';
import 'package:pregnancy_tracker_mobile_app_clone/core/config/asset_management/app_icons.dart';
import 'package:pregnancy_tracker_mobile_app_clone/core/config/theme_management/app_text_style.dart';

class HeaderSection extends StatelessWidget {
  final String contentHeaderTitle;
  final IconData contentrHeaderIcon;

  const HeaderSection({
    super.key,
    required this.contentHeaderTitle,
    required this.contentrHeaderIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            contentHeaderTitle,
            style: AppTextStyle.contentHeaderTitleTextStyle,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Icon(
            contentrHeaderIcon,
            color: Colors.black87,
            size: AppIconSizes.headerSectionIconSize,
          ),
        ),
      ],
    );
    ;
  }
}
