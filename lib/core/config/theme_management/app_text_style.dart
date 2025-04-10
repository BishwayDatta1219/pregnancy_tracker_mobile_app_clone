import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pregnancy_tracker_mobile_app_clone/core/config/theme_management/app_colors.dart';

class AppTextStyle {
  static final TextStyle appbarTitleTextStyle = GoogleFonts.poppins(
    fontSize: 24.0,
    fontWeight: FontWeight.w600,
    color: Colors.black87,
  );

  static final TextStyle bannerTitleTextStyle = GoogleFonts.poppins(
    fontSize: 30.0,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    letterSpacing: 1.2,
  );

  static final TextStyle bannerDescriptionTextStyle = GoogleFonts.poppins(
    fontSize: 18.0,
    color: Color(0xFFf8f8f8),
    fontWeight: FontWeight.w500,
  );

  static final TextStyle bannerFooterButtonTextStyle = GoogleFonts.poppins(
    fontSize: 12.0,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static final TextStyle bannerFooterStartButtonTextStyle = GoogleFonts.poppins(
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
    color: AppColors.bannerFooterButtonTextColor,
  );

  static final TextStyle contentHeaderTitleTextStyle = GoogleFonts.poppins(
    fontSize: 18.0,
    color: Colors.black87,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle exerciseTitleTextStyle = GoogleFonts.poppins(
    fontSize: 20.0,
    fontWeight: FontWeight.w600,
    color: Colors.black87,
  );

  static final TextStyle exerciseDifficultyLevelTextStyle = GoogleFonts.poppins(
    color: Color(0xFF818187),
    fontSize: 12.0,
  );

  static final TextStyle exerciseDurationTextStyle = GoogleFonts.poppins(
    fontSize: 12,
    color: Color(0xFF818187),
  );
}
