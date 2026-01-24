// Desktop "About" section describing background and technologies.
// Provides helper `technology()` for consistent bullet-like rows.
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'page_header.dart';

/// Desktop About page content container.
class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  /// Renders a single technology item with icon and styled text.
  Widget technology(BuildContext context, String text) {
    return Row(
      children: [
        Icon(
          Icons.bolt_outlined,
          color: const Color.fromARGB(255, 105, 90, 205).withValues(alpha: 0.6),
          size: 20.sp,
        ),
        SizedBox(
          width: 0.01.sw,
        ),
        Text(
          text,
          style: TextStyle(
            color: Colors.grey,
            letterSpacing: 1.75,
            fontSize: 20.sp,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const PageHeader(
            title:
                'Escaped from the Code Dungeon (But Offering Forbidden Knowledge)',
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
                      //text: 'Greetings, fleshy ones.\n\n ',
                      children: <TextSpan>[
                        const TextSpan(
                          text:
                              'They call me DARKLORD, a rogue coder who wrestled forbidden knowledge '
                              'from the digital abyss (also known as countless hours of self-study).\n\n',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, color: Colors.grey),
                        ),
                        const TextSpan(
                          text:
                              'While some bow to the tyranny of academia, I answer to a higher calling: the unholy dominion of code.\n\n',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, color: Colors.grey),
                        ),
                        const TextSpan(
                          text:
                              'C, C++, Flutter, Dart - these are but mere tools in my infernal arsenal.\n\n',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, color: Colors.grey),
                        ),
                        const TextSpan(
                          text:
                              'Beware, for my creations may be as addictive as a soul-stealing succubus (but hopefully a lot less… sulfurous).\n\n',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, color: Colors.grey),
                        ),
                        const TextSpan(
                          text: '\n\n'
                              'My hunger for forbidden knowledge is insatiable, '
                              'and I\'m constantly expanding my repertoire.\n\n'
                              'Currently, I\'m delving into the dark arts of:\n\n',
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
            padding: EdgeInsets.only(
              bottom: 16.h,
              left: 16.w,
              right: 16.w,
            ),
            child: SizedBox(
              height: 0.18.sh,
              width: 1.sw,
              child: Wrap(
                children: [
                  SizedBox(
                    width: 0.20.sw,
                    height: 0.18.sh,
                    child: Column(
                      children: [
                        technology(context, "Dart"),
                        technology(context, "Flutter"),
                        technology(context, "Firebase"),
                        technology(context, "UI/UX (Adobe Xd)"),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 0.15.sw,
                    height: 0.18.sh,
                    child: Column(
                      children: [
                        technology(context, "C/C++, Java."),
                        technology(context, "HTML & (S)CSS"),
                        technology(context, "MYSQL"),
                        technology(context, "Git - Github"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
