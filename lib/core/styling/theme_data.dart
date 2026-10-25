import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:day11/core/styling/app_colors.dart';
import 'package:day11/core/styling/app_fonts.dart';
import 'package:day11/core/styling/app_styles.dart';

class AppTheme {
  AppTheme._();

  // ==========================================
  // LIGHT THEME
  // ==========================================
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      fontFamily: AppFonts.mainFontName,
      scaffoldBackgroundColor: AppColors.whiteColor,
      primaryColor: AppColors.primaryColor,
      
      colorScheme: ColorScheme.light(
        primary: AppColors.primaryColor,
        secondary: AppColors.secondaryColor,
        surface: AppColors.whiteColor,
        onSurface: AppColors.blackColor,
      ),

      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: AppColors.blackColor),
        titleTextStyle: AppStyles.black16w500Style.copyWith(
          fontSize: 18.sp,
          fontWeight: FontWeight.bold,
        ),
      ),

      textTheme: TextTheme(
        headlineLarge: AppStyles.primaryHeadLinesStyle,
        titleLarge: AppStyles.black15BoldStyle,
        titleMedium: AppStyles.black16w500Style,
        bodyLarge: AppStyles.subTitlesStyle,
        bodyMedium: AppStyles.primary15MediumStyle,
        bodySmall: AppStyles.grey12MediumStyle,
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          foregroundColor: AppColors.whiteColor,
          minimumSize: Size(double.infinity, 56.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
          textStyle: AppStyles.black16w500Style.copyWith(
            color: AppColors.whiteColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.greyBackgroundColor,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 18.w,
          vertical: 18.h,
        ),
        hintStyle: AppStyles.grey12MediumStyle.copyWith(
          fontSize: 15.sp,
          fontWeight: FontWeight.w600,
          color: AppColors.secondaryColor,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            color: AppColors.greyBackgroundColor,
            width: 1.w,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            color: AppColors.primaryColor,
            width: 1.5.w,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: Colors.red, width: 1.w),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: Colors.red, width: 1.5.w),
        ),
      ),
    );
  }

  // ==========================================
  // DARK THEME
  // ==========================================
  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      fontFamily: AppFonts.mainFontName,
      scaffoldBackgroundColor: const Color(0xFF121212),
      primaryColor: AppColors.primaryColor,
      
      colorScheme: ColorScheme.dark(
        primary: AppColors.primaryColor,
        secondary: AppColors.secondaryColor,
        surface: const Color(0xFF1E1E1E),
        onSurface: AppColors.whiteColor,
      ),

      appBarTheme: AppBarTheme(
        backgroundColor: const Color(0xFF121212),
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: AppColors.whiteColor),
        titleTextStyle: AppStyles.black16w500Style.copyWith(
          fontSize: 18.sp,
          fontWeight: FontWeight.bold,
          color: AppColors.whiteColor,
        ),
      ),

      textTheme: TextTheme(
        headlineLarge: AppStyles.primaryHeadLinesStyle.copyWith(
          color: AppColors.primaryColor,
        ),
        titleLarge: AppStyles.black15BoldStyle.copyWith(
          color: AppColors.whiteColor,
        ),
        titleMedium: AppStyles.black16w500Style.copyWith(
          color: AppColors.whiteColor,
        ),
        bodyLarge: AppStyles.subTitlesStyle.copyWith(
          color: const Color(0xFFA3B1C2),
        ),
        bodyMedium: AppStyles.primary15MediumStyle,
        bodySmall: AppStyles.grey12MediumStyle.copyWith(
          color: AppColors.greyColor,
        ),
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          foregroundColor: AppColors.whiteColor,
          minimumSize: Size(double.infinity, 56.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
          textStyle: AppStyles.black16w500Style.copyWith(
            color: AppColors.whiteColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: const Color(0xFF1E1E1E),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 18.w,
          vertical: 18.h,
        ),
        hintStyle: AppStyles.grey12MediumStyle.copyWith(
          fontSize: 15.sp,
          fontWeight: FontWeight.w600,
          color: AppColors.greyColor,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            color: const Color(0xFF2C2C2C),
            width: 1.w,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            color: AppColors.primaryColor,
            width: 1.5.w,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: Colors.red, width: 1.w),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: Colors.red, width: 1.5.w),
        ),
      ),
    );
  }
}