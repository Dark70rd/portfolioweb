import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MobileServicesPage extends StatelessWidget {
  const MobileServicesPage({super.key});

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
            'Unearthing Your Digital Desires (and Making Them My Playthings)',
            style: TextStyle(
              fontSize: 122.sp,
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
                fontSize: 98.sp,
                color: Colors.grey,
                height: 1.6,
              ),
              children: const <TextSpan>[
                TextSpan(
                  text: ' Do your digital dreams linger in the purgatory of your mind?\n\n'
                      '\n\n',
                ),
                TextSpan(
                  text: 'Fear not, for DARKLORD has emerged from the code underworld to bring your wildest ideas to life.\n\n'
                      'User interfaces so slick they\'d make a demon blush?\n\n'
                      'Backends that run faster than a headless horseman on a sugar rush?\n\n'
                      'Consider it done.\n\n'
                      '\n\n',
                  style: TextStyle(fontWeight: FontWeight.w500, height: 1.6),
                ),
                TextSpan(
                  text: 'Whether you crave a mobile app or a web application, ',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                TextSpan(
                  text: 'I\'m your master of ceremonies, here to weave your desires into digital nightmares...\n\n',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                TextSpan(
                  text: 'I mean, masterpieces.\n\n',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          SizedBox(height: 40.h),
        ],
      ),
    );
  }
}
