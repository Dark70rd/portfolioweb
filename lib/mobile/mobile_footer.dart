import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'mobile_text_styles.dart';

class MobileFooter extends StatelessWidget {
  const MobileFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
      color: Colors.transparent,
      child: Center(
        child: Wrap(
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 8.w,
          children: [
            Text(
              'Designed and built by Dark70rd',
              style: MobileTextStyles.bodyMedium,
              textAlign: TextAlign.center,
            ),
            Icon(
              Icons.bolt_outlined,
              color: const Color.fromARGB(255, 105, 90, 205).withValues(alpha: 0.6),
              size: 48.sp,
            ),
            Text(
              'Flutter',
              style: MobileTextStyles.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
