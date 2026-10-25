import 'package:day11/core/styling/app_colors.dart';
import 'package:day11/core/styling/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryOutlinedButtonWidget extends StatelessWidget {
  final String? buttonText;
  final Color? textColor;
  final Color? backgroundColor;
  final double? width;
  final double? height;
  final double? borderRadius;
  final Color? borderColor;
  final TextStyle? textStyle;
  final VoidCallback? onPressed; // Standard Flutter type for button callbacks

  const PrimaryOutlinedButtonWidget({
    super.key,
    this.buttonText,
    this.textColor,
    this.backgroundColor,
    this.width,
    this.height,
    this.borderRadius,
    this.borderColor,
    this.textStyle,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        backgroundColor: backgroundColor ?? Colors.transparent,
        minimumSize: Size(width ?? double.infinity, height ?? 56.h),
        side: BorderSide(
          color: borderColor ?? AppColors.primaryColor,
          width: 1.w,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 8.r),
        ),
      ),
      child: Text(
        buttonText ?? "",
        style: textStyle ??
            TextStyle(
              fontFamily: AppFonts.mainFontName,
              color: textColor ?? AppColors.primaryColor,
              fontSize: 15.sp,
              fontWeight: FontWeight.w600,
            ),
      ),
    );
  }
}