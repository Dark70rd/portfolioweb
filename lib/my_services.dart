// Desktop "Services" section outlining capabilities and pitch.
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'page_header.dart';

/// Desktop services page content container.
class ServicePage extends StatelessWidget {
  const ServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const PageHeader(
            title:
                'Unearthing Your Digital Desires (and Making Them My Playthings)',
          ),
          SizedBox(
            height: 30.h,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.all(16.w),
                child: DefaultTextStyle(
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: Colors.grey,
                  ),
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 20.sp,
                        color: Colors.grey,
                      ),
                      text:
                          ' Do your digital dreams linger in the purgatory of your mind?\n\n'
                          '\n\n',
                      children: <TextSpan>[
                        const TextSpan(
                          text:
                              'Fear not, for DARKLORD has emerged from the code underworld to bring your wildest ideas to life.\n\n'
                              'User interfaces so slick they\'d make a demon blush?\n\n'
                              'Backends that run faster than a headless horseman on a sugar rush?\n\n'
                              'Consider it done.\n\n'
                              '\n\n',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                              height: 1.0),
                        ),
                        const TextSpan(
                          text:
                              'Whether you crave a mobile app or a web application, ',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, color: Colors.grey),
                        ),
                        const TextSpan(
                          text:
                              'I\'m your master of ceremonies, here to weave your desires into digital nightmares...\n\n',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, color: Colors.grey),
                        ),
                        const TextSpan(
                          text: 'I mean, masterpieces.\n\n',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
