import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'page_header.dart';

class ContactPageView extends StatelessWidget {
  const ContactPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const PageHeader(
            title:
                'Summon DARKLORD if You Dare (But Only for Worthy Inquiries)',
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
                          'So, you\'ve ventured into the digital underworld and stumbled upon the domain of DARKLORD.\n\n',
                      children: <TextSpan>[
                        const TextSpan(
                          text:
                              'Do you have a project that needs a touch of the infernal?'
                              ' Perhaps you crave a conversation with a developer who speaks '
                              'the language of both the living and the coded?\n\n',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                              height: 1.0),
                        ),
                        const TextSpan(
                          text: 'If your request is worthy of my attention, '
                              'then by all means, unleash your unholy project '
                              'details with a click! But heed this warning: only '
                              'the worthy shall receive a response (and by "worthy," '
                              'I mean those with interesting projects, not just free pizza coupons).',
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
          Padding(
            padding: EdgeInsets.only(left: 15.w, top: 40.h),
            child: Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                width: 0.1.sw,
                height: 0.07.sh,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
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
            ),
          ),
        ],
      ),
    );
  }
}
