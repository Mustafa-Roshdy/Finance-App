import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:day11/core/styling/app_colors.dart';
import 'package:day11/core/styling/app_fonts.dart';
import 'package:day11/core/styling/app_styles.dart';

class AppTheme {
  // Private constructor to prevent instantiation
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

      // Color Scheme
      colorScheme: ColorScheme.light(
        primary: AppColors.primaryColor,
        secondary: AppColors.secondaryColor,
        surface: AppColors.whiteColor,
        onSurface: AppColors.blackColor,
      ),

      // AppBar Theme
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: AppColors.blackColor,
        ),
        titleTextStyle: AppStyles.black16w500Style.copyWith(
          fontSize: 18.sp,
          fontWeight: FontWeight.bold,
        ),
      ),

      // Text Theme
      textTheme: TextTheme(
        headlineLarge: AppStyles.primaryHeadLinesStyle,
        titleMedium: AppStyles.black16w500Style,
        bodyMedium: AppStyles.subTitlesStyle,
        bodySmall: AppStyles.grey12MediumStyle,
      ),

      // Elevated Button Style
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          foregroundColor: AppColors.whiteColor,
          minimumSize: Size(double.infinity, 50.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
          textStyle: TextStyle(
            fontFamily: AppFonts.mainFontName,
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      // Input Decoration (Text Fields)
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: const Color(0xFFF7F8F9),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 18.h,
        ),
        hintStyle: AppStyles.grey12MediumStyle.copyWith(
          fontSize: 14.sp,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            color: const Color(0xFFE8ECF4),
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
          borderSide: BorderSide(
            color: Colors.red,
            width: 1.w,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            color: Colors.red,
            width: 1.5.w,
          ),
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
      scaffoldBackgroundColor: const Color(0xFF121212), // Material Dark Surface
      primaryColor: AppColors.primaryColor,

      // Color Scheme
      colorScheme: ColorScheme.dark(
        primary: AppColors.primaryColor,
        secondary: AppColors.secondaryColor,
        surface: const Color(0xFF1E1E1E),
        onSurface: AppColors.whiteColor,
      ),

      // AppBar Theme
      appBarTheme: AppBarTheme(
        backgroundColor: const Color(0xFF121212),
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: AppColors.whiteColor,
        ),
        titleTextStyle: AppStyles.black16w500Style.copyWith(
          fontSize: 18.sp,
          fontWeight: FontWeight.bold,
          color: AppColors.whiteColor,
        ),
      ),

      // Text Theme
      textTheme: TextTheme(
        headlineLarge: AppStyles.primaryHeadLinesStyle.copyWith(
          color: AppColors.primaryColor,
        ),
        titleMedium: AppStyles.black16w500Style.copyWith(
          color: AppColors.whiteColor,
        ),
        bodyMedium: AppStyles.subTitlesStyle.copyWith(
          color: const Color(0xFFA3B1C2),
        ),
        bodySmall: AppStyles.grey12MediumStyle.copyWith(
          color: AppColors.greyColor,
        ),
      ),

      // Elevated Button Style
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          foregroundColor: AppColors.whiteColor,
          minimumSize: Size(double.infinity, 50.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
          textStyle: TextStyle(
            fontFamily: AppFonts.mainFontName,
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      // Input Decoration (Text Fields)
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: const Color(0xFF1E1E1E),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 18.h,
        ),
        hintStyle: AppStyles.grey12MediumStyle.copyWith(
          fontSize: 14.sp,
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
          borderSide: BorderSide(
            color: Colors.red,
            width: 1.w,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            color: Colors.red,
            width: 1.5.w,
          ),
        ),
      ),
    );
  }
}