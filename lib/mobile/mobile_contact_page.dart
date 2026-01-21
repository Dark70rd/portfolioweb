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
          // Header
          Text(
            'Summon DARKLORD if You Dare (But Only for Worthy Inquiries)',
            style: TextStyle(
              fontSize: 72.sp,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 8.h),
          Divider(color: Colors.grey, thickness: 2.h),
          SizedBox(height: 20.h),
          
          // Description text
          RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: 48.sp,
                color: Colors.grey,
                height: 1.6,
              ),
              children: const <TextSpan>[
                TextSpan(
                  text: 'So, you\'ve ventured into the digital underworld and stumbled upon the domain of DARKLORD.\n\n',
                ),
                TextSpan(
                  text: 'Do you have a project that needs a touch of the infernal?'
                      ' Perhaps you crave a conversation with a developer who speaks '
                      'the language of both the living and the coded?\n\n',
                  style: TextStyle(fontWeight: FontWeight.w500, height: 1.6),
                ),
                TextSpan(
                  text: 'If your request is worthy of my attention, '
                      'then by all means, unleash your unholy project '
                      'details with a click! But heed this warning: only '
                      'the worthy shall receive a response (and by "worthy," '
                      'I mean those with interesting projects, not just free pizza coupons).',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ],
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
                  fontSize: 48.sp,
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
