import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MobileContactPage extends StatelessWidget {
  const MobileContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Contact',
            style: TextStyle(
              fontSize: 32.sp,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 8.h),
          Divider(color: Colors.grey, thickness: 2.h),
          SizedBox(height: 20.h),
          Text(
            'So, you\'ve ventured into the digital underworld and stumbled upon the domain of DARKLORD.\n\n'
            'Do you have a project that needs a touch of the infernal? '
            'Perhaps you crave a conversation with a developer who speaks '
            'the language of both the living and the coded?\n\n'
            'If your request is worthy of my attention, '
            'then by all means, unleash your unholy project '
            'details with a click!',
            style: TextStyle(
              fontSize: 16.sp,
              color: Colors.grey,
              height: 1.6,
            ),
          ),
          SizedBox(height: 30.h),
          SizedBox(
            width: double.infinity,
            height: 50.h,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
                side: const BorderSide(color: Colors.grey),
              ),
              onPressed: () {},
              child: Text(
                'Sell Your Soul',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.sp,
                ),
              ),
            ),
          ),
          SizedBox(height: 40.h),
        ],
      ),
    );
  }
}
