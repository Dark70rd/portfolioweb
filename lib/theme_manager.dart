import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppColors {
  AppColors._();

  static const Color background = Colors.black;
  static const Color surface = Colors.black;
  static const Color primary = Colors.grey;
  static const Color accent = Color.fromARGB(255, 105, 90, 205);
  static const Color textPrimary = Colors.grey;
}

class AppSpacing {
  AppSpacing._();

  static double xs = 4.w;
  static double sm = 8.w;
  static double md = 16.w;
  static double lg = 24.w;
  static double xl = 32.w;
}

class AppRadius {
  AppRadius._();

  static double sm = 8.r;
  static double md = 12.r;
  static double lg = 16.r;
}

class AppTheme {
  AppTheme._();

  static ThemeData get lightTheme {
    final base = ThemeData.dark();
    return base.copyWith(
      scaffoldBackgroundColor: AppColors.background,
      colorScheme: base.colorScheme.copyWith(
        brightness: Brightness.dark,
        primary: AppColors.primary,
        secondary: AppColors.accent,
        surface: AppColors.surface,
        background: AppColors.background,
      ),
      textTheme: base.textTheme.copyWith(
        headlineLarge: TextStyle(
          color: AppColors.textPrimary,
          fontSize: 40.sp,
          fontWeight: FontWeight.bold,
        ),
        headlineMedium: TextStyle(
          color: AppColors.textPrimary,
          fontSize: 32.sp,
          fontWeight: FontWeight.bold,
        ),
        titleLarge: TextStyle(
          color: AppColors.textPrimary,
          fontSize: 24.sp,
          fontWeight: FontWeight.w700,
        ),
        bodyLarge: TextStyle(
          color: AppColors.textPrimary,
          fontSize: 20.sp,
        ),
        bodyMedium: TextStyle(
          color: AppColors.textPrimary,
          fontSize: 18.sp,
        ),
        bodySmall: TextStyle(
          color: AppColors.textPrimary,
          fontSize: 16.sp,
        ),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: AppColors.textPrimary),
      ),
      dividerTheme: const DividerThemeData(color: AppColors.textPrimary),
    );
  }
}
