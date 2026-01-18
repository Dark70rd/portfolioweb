import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class MobileTitlePage extends StatelessWidget {
  const MobileTitlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40.h),
          AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                'Greetings, mortals.',
                textStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w300,
                ),
                speed: const Duration(milliseconds: 100),
              ),
            ],
            isRepeatingAnimation: false,
          ),
          SizedBox(height: 30.h),
          AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                'I am DARK70RD.',
                textStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 40.sp,
                  fontWeight: FontWeight.w300,
                ),
                speed: const Duration(milliseconds: 100),
              ),
            ],
            isRepeatingAnimation: false,
          ),
          SizedBox(height: 40.h),
          Text(
            'Delve into my portfolio and witness the unholy power of code...\n\nor click away if you fear the shadows.',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16.sp,
              fontWeight: FontWeight.w300,
              height: 1.5,
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
                'Summon Me',
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
