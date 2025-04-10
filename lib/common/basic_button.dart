import 'package:flutter/material.dart';
import '../core/config/theme_management/app_text_style.dart';

class BasicButton extends StatelessWidget {
  final double buttonWidth;
  final double buttonHeight;
  final VoidCallback onPressed;
  final String buttonText;

  const BasicButton({
    super.key,
    required this.buttonWidth,
    required this.buttonHeight,
    required this.onPressed,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: buttonWidth,
        height: buttonHeight,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: AppTextStyle.bannerFooterStartButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
