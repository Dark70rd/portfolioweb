// Simple page section header with title and trailing divider.
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Renders a section title aligned left with a divider to the right.
class PageHeader extends StatelessWidget {
  final String title;

  const PageHeader({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.w),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Row(
          children: [
            Flexible(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: Divider(color: Colors.grey, thickness: 2.h),
            ),
          ],
        ),
      ),
    );
  }
}
