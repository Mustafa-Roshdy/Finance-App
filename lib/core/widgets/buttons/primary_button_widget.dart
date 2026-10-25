import 'package:day11/core/styling/app_colors.dart';
import 'package:day11/core/styling/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButtonWidget extends StatelessWidget {
  final String? buttonText;
  final Color? textColor;
  final Color? buttonColor; // Cleaned up the trailing 'l'
  final double? width;
  final double? height;
  final double? borderRadius;
  final TextStyle? textStyle;
  final VoidCallback? onPressed; // Standard Flutter type

  const PrimaryButtonWidget({
    super.key,
    this.borderRadius,
    this.buttonColor,
    this.buttonText,
    this.height,
    this.width,
    this.textColor,
    this.onPressed,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor ?? AppColors.primaryColor,
        minimumSize: Size(width ?? double.infinity, height ?? 56.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 8.r),
        ),
      ),
      child: Text(
        buttonText ?? "",
        style: textStyle ??
            TextStyle(
              fontFamily: AppFonts.mainFontName,
              color: textColor ?? AppColors.whiteColor,
              fontSize: 15.sp,
              fontWeight: FontWeight.w600,
            ),
      ),
    );
  }
}