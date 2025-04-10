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
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: Image(
              image: AssetImage(AppImages.bannerBgImage),
              width: 380.0,
              height: 380.0,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: 380.0,
            height: 380.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              color: Colors.black87.withValues(alpha: 0.1),
            ),
          ),
          Positioned(
            left: 20.0,
            top: 90.0,
            right: 20.0,
            bottom: 10.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(bannerTitle, style: AppTextStyle.bannerTitleTextStyle),
                SizedBox(
                  width: 240.0,
                  height: 130.0,
                  child: Text(
                    bannerDescription,
                    style: AppTextStyle.bannerDescriptionTextStyle,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 20.0,
            top: 300.0,
            right: 20.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        _buildBannerFooterImage(
                          imagePath: AppImages.bannerFooterImage02,
                        ),
                        SizedBox(width: 10.0),
                        _buildBannerFooterImage(
                          imagePath: AppImages.bannerFooterImage01,
                        ),
                        SizedBox(width: 10.0),
                        Container(
                          width: 30.0,
                          height: 30.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                AppColors.bannerFooterButtonGradientStart,
                                AppColors.bannerFooterButtonGradientEnd,
                              ],
                            ),
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
                    BasicButton(
                      buttonWidth: 100.0,
                      buttonHeight: 55.0,
                      onPressed: () {
                        print("Let's Start!!");
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
