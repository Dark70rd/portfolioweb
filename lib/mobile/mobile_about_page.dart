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
          // Header
          Text(
            'Escaped from the Code Dungeon (But Offering Forbidden Knowledge)',
            style: TextStyle(
              fontSize: 24.sp,
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
                fontSize: 16.sp,
                color: Colors.grey,
                height: 1.6,
              ),
              children: const <TextSpan>[
                TextSpan(
                  text: 'They call me DARKLORD, a rogue coder who wrestled forbidden knowledge '
                      'from the digital abyss (also known as countless hours of self-study).\n\n',
                  style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey),
                ),
                TextSpan(
                  text: 'While some bow to the tyranny of academia, I answer to a higher calling: the unholy dominion of code.\n\n',
                  style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey),
                ),
                TextSpan(
                  text: 'C, C++, Flutter, Dart - these are but mere tools in my infernal arsenal.\n\n',
                  style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey),
                ),
                TextSpan(
                  text: 'Beware, for my creations may be as addictive as a soul-stealing succubus (but hopefully a lot less… sulfurous).\n\n',
                  style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey),
                ),
                TextSpan(
                  text: '\n\n'
                      'My hunger for forbidden knowledge is insatiable, '
                      'and I\'m constantly expanding my repertoire.\n\n'
                      'Currently, I\'m delving into the dark arts of:\n\n',
                  style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey),
                ),
              ],
            ),
          ),
          
          SizedBox(height: 10.h),
          
          // Technologies
          _buildTechItem('Dart'),
          _buildTechItem('Flutter'),
          _buildTechItem('Firebase'),
          _buildTechItem('UI/UX (Adobe Xd)'),
          _buildTechItem('C/C++, Java.'),
          _buildTechItem('HTML & (S)CSS'),
          _buildTechItem('MYSQL'),
          _buildTechItem('Git - Github'),
          
          SizedBox(height: 40.h),
        ],
      ),
    );
  }

  Widget _buildTechItem(String text) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Row(
        children: [
          Icon(
            Icons.bolt_outlined,
            color: const Color.fromARGB(255, 105, 90, 205).withValues(alpha: 0.6),
            size: 16.sp,
          ),
          SizedBox(width: 8.w),
          Flexible(
            child: Text(
              text,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16.sp,
                letterSpacing: 1.75,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
