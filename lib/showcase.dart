// Desktop "Showcase" section listing project highlights and resources.
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'projectShowcase_model.dart';
import 'page_header.dart';

/// Desktop showcase page root. Displays project cards below header.
class ShowcasePage extends StatefulWidget {
  const ShowcasePage({super.key});

  @override
  State<ShowcasePage> createState() => _ShowcasePageState();
}

/// Small utility text widget for custom sizing/weight/color.
class CustomText extends StatelessWidget {
  final String text;
  final double textsize;
  final Color color;
  final double letterSpacing;
  final FontWeight fontWeight;

  const CustomText({
    super.key,
    required this.text,
    required this.textsize,
    required this.color,
    required this.letterSpacing,
    required this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: textsize.sp,
          color: color,
          letterSpacing: letterSpacing,
          fontWeight: fontWeight),
    );
  }
}

// ignore: library_private_types_in_public_api
class _ShowcasePageState extends State<ShowcasePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const PageHeader(
            title:
                'Behold! My Infernal Creations... (or Maybe Not, Still Under Construction)',
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
                      //text: additional text you can add here..',
                      children: <TextSpan>[
                        const TextSpan(
                          text:
                              'Mortals, gaze upon the unholy portfolio of DARKLORD! '
                              '(Okay, maybe "unholy" is a bit much. Still under construction, \n\n'
                              'like a haunted house on a budget.) But fear not, '
                              'for what these projects lack in quantity, they make up for in sheer demonic… brilliance.'
                              '\n\n',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                              height: 1.0),
                        ),
                        const TextSpan(
                          text: '\n\n'
                              'Here you\'ll find a glimpse of my coding conquests, '
                              'a testament to my skill that\'s sure to tantalize your \n\n'
                              'retinas (or send shivers down your spine, depending on '
                              'your tolerance for the dark arts). Dive in, if you dare!',
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
          SizedBox(height: 70.h),
          // Example project cards. Map your actual data from `ProjectShowcase` model.
          ProjectShowcase(
              imageUrl: 'https://picsum.photos/id/8/500/300/?grayscale&blur=2',
              shortDescription: 'This is a short description of the project.',
              projectTitle: 'Project Title',
              projectResources: const ['Flutter', 'Dart', 'Firebase'],
              githubLink: 'https://github.com/username/project',
            ),
          ProjectShowcase(
              imageUrl: 'https://picsum.photos/id/7/500/300/?grayscale&blur=2',
              shortDescription: 'This is a short description of the project.',
              projectTitle: 'Project Title',
              projectResources: const ['Flutter', 'Dart', 'Firebase'],
              githubLink: 'https://github.com/username/project',
            ),
        ],
      ),
    );  }
}