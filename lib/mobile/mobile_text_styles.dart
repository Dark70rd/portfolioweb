import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MobileTextStyles {
  // Main heading styles
  static TextStyle heading = TextStyle(
    fontSize: 72.sp,
    fontWeight: FontWeight.bold,
    color: Colors.grey,
  );

  static TextStyle subheading = TextStyle(
    fontSize: 110.sp,
    fontWeight: FontWeight.bold,
    color: Colors.grey,
  );

  // Body text styles
  static TextStyle body = TextStyle(
    fontSize: 48.sp,
    color: Colors.grey,
    height: 1.6,
  );

  static TextStyle bodyMedium = TextStyle(
    fontSize: 42.sp,
    color: Colors.grey,
    height: 1.5,
  );

  static TextStyle bodySmall = TextStyle(
    fontSize: 36.sp,
    color: Colors.grey.shade400,
  );

  // Label and button styles
  static TextStyle label = TextStyle(
    fontSize: 58.sp,
    color: Colors.grey,
  );

  static TextStyle bodyBold = TextStyle(
    fontSize: 48.sp,
    fontWeight: FontWeight.w500,
    color: Colors.grey,
    height: 1.6,
  );
}
