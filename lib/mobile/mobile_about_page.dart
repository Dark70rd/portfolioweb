import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MobileAboutPage extends StatelessWidget {
  const MobileAboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About Me',
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
            'They call me DARKLORD, a rogue coder who wrestled forbidden knowledge '
            'from the digital abyss (also known as countless hours of self-study).\n\n'
            'While some bow to the tyranny of academia, I answer to a higher calling: the unholy dominion of code.\n\n'
            'C, C++, Flutter, Dart - these are but mere tools in my infernal arsenal.',
            style: TextStyle(
              fontSize: 16.sp,
              color: Colors.grey,
              height: 1.6,
            ),
          ),
          SizedBox(height: 30.h),
          Text(
            'Technologies',
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 20.h),
          _buildTechItem('Dart'),
          _buildTechItem('Flutter'),
          _buildTechItem('Firebase'),
          _buildTechItem('C/C++, Java'),
          _buildTechItem('HTML & (S)CSS'),
          _buildTechItem('MySQL'),
          _buildTechItem('Git - GitHub'),
          _buildTechItem('UI/UX (Adobe Xd)'),
          SizedBox(height: 40.h),
        ],
      ),
    );
  }

  Widget _buildTechItem(String text) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12.h),
      child: Row(
        children: [
          Icon(
            Icons.bolt_outlined,
            color: const Color.fromARGB(255, 105, 90, 205).withOpacity(0.6),
            size: 18.sp,
          ),
          SizedBox(width: 12.w),
          Text(
            text,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16.sp,
              letterSpacing: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
