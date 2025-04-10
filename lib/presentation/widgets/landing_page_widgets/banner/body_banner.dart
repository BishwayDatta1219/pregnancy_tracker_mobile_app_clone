import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pregnancy_tracker_mobile_app_clone/common/basic_button.dart';
import 'package:pregnancy_tracker_mobile_app_clone/core/config/theme_management/app_colors.dart';
import 'package:pregnancy_tracker_mobile_app_clone/core/config/theme_management/app_text_style.dart';

import '../../../../core/config/asset_management/app_images.dart';

class BodyBanner extends StatelessWidget {
  final String bannerTitle;
  final String bannerDescription;

  const BodyBanner({
    super.key,
    required this.bannerTitle,
    required this.bannerDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: Image(
              image: AssetImage(AppImages.bannerBgImage),
              fit: BoxFit.cover,
              width: 380.0,
              height: 380.0,
            ),
          ),
          Container(
            width: 380.0,
            height: 380.0,
            decoration: BoxDecoration(
              color: Colors.black.withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(25.0),
            ),
          ),
          Positioned(
            top: 90.0,
            left: 20.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(bannerTitle, style: AppTextStyle.bannerTitleTextStyle),
                SizedBox(height: 10),
                SizedBox(
                  width: 240,
                  height: 130,
                  child: Text(
                    bannerDescription,
                    style: AppTextStyle.bannerDescriptionTextStyle,
                  ),
                ),
                SizedBox(height: 30.0),
                Row(
                  children: [
                    Row(
                      children: [
                        _buildBannerFooterImage(
                          imagePath: AppImages.bannerFooterImage01,
                        ),
                        SizedBox(width: 10.0),
                        _buildBannerFooterImage(
                          imagePath: AppImages.bannerFooterImage02,
                        ),
                        SizedBox(width: 10.0),
                        Container(
                          width: 30.0,
                          height: 30.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                AppColors.bannerFooterButtonGradientStart,
                                AppColors.bannerFooterButtonGradientEnd,
                              ],
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Center(
                            child: Text(
                              "+12",
                              style: AppTextStyle.bannerFooterButtonTextStyle,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 120.0),
                    BasicButton(
                      buttonWidth: 100.0,
                      buttonHeight: 55.0,
                      onPressed: () {
                        print("Let's start!!");
                      },
                      buttonText: "Start",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBannerFooterImage({required String imagePath}) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Image(
        image: AssetImage(imagePath),
        fit: BoxFit.cover,
        width: 30.0,
        height: 30.0,
      ),
    );
  }
}
