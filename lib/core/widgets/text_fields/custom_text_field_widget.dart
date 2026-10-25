
import 'package:day11/core/styling/app_colors.dart';
import 'package:day11/core/styling/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final String? hintText;
  final Color? backgroundColor;
  final Color? textColor;
  final Widget? suffixIcon;
  final double? width;
  final double? height;
  final double? borderRadius;
  final bool isPassword;

  const CustomTextFieldWidget({
    super.key,
    this.backgroundColor,
    this.borderRadius,
    this.height,
    this.width,
    this.textColor,
    this.hintText,
    this.suffixIcon,
    this.isPassword=false
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? 56.h,
      child: TextField(
        obscureText: isPassword,
        cursorColor: AppColors.primaryColor,
        decoration: InputDecoration(
          hintText: hintText ?? "",
          hintStyle: TextStyle(
            fontSize: 15.sp,
            fontFamily: AppFonts.mainFontName,
            fontWeight: FontWeight.w600,
            color: textColor ?? AppColors.secondaryColor,
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 18.w,
            vertical: 18.h,
          ),
          fillColor:backgroundColor?? AppColors.greyBackgroundColor,
          filled: true,

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 8.r),
            borderSide: BorderSide(
              color:backgroundColor?? AppColors.greyBackgroundColor,
              width: 1.w,
            ),
          ),
          suffixIcon: suffixIcon ,
          suffixIconConstraints: BoxConstraints(
            minWidth: 22.w,
            minHeight: 22.h,
          ),
          suffixIconColor: const Color(0xff6A707C),

          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 8.r),
            borderSide: BorderSide(
              color: AppColors.primaryColor,
              width: 1.5.w,
            ),
          ),
        ),
      ),
    );
  }
}
