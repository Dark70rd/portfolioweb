import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileShowcasePage extends StatelessWidget {
  const MobileShowcasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            children: [
              Flexible(
                child: Text(
                  'Behold! My Infernal Creations... (or Maybe Not, Still Under Construction)',
                  style: TextStyle(
                    fontSize: 122.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
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
                  text: 'Mortals, gaze upon the unholy portfolio of DARKLORD! '
                      '(Okay, maybe "unholy" is a bit much. Still under construction, '
                      'like a haunted house on a budget.) But fear not, '
                      'for what these projects lack in quantity, they make up for in sheer demonic… brilliance.'
                      '\n\n',
                  style: TextStyle(fontWeight: FontWeight.w500, height: 1.6),
                ),
                TextSpan(
                  text: '\n\n'
                      'Here you\'ll find a glimpse of my coding conquests, '
                      'a testament to my skill that\'s sure to tantalize your '
                      'retinas (or send shivers down your spine, depending on '
                      'your tolerance for the dark arts). Dive in, if you dare!',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          SizedBox(height: 30.h),
          _buildProjectCard(
            'Project Title 1',
            'This is a short description of the project.',
            ['Flutter', 'Dart', 'Firebase'],
            'https://picsum.photos/id/8/500/300/?grayscale&blur=2',
            'https://github.com/username/project',
          ),
          SizedBox(height: 30.h),
          _buildProjectCard(
            'Project Title 2',
            'This is a short description of the project.',
            ['Flutter', 'Dart', 'Firebase'],
            'https://picsum.photos/id/7/500/300/?grayscale&blur=2',
            'https://github.com/username/project',
          ),
          SizedBox(height: 40.h),
        ],
      ),
    );
  }

  Widget _buildProjectCard(
    String title,
    String description,
    List<String> tech,
    String imageUrl,
    String githubLink,
  ) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade800),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            imageUrl,
            width: double.infinity,
            height: 200.h,
            fit: BoxFit.cover,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return Container(
                height: 200.h,
                color: Colors.grey.shade900,
                child: Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded /
                            loadingProgress.expectedTotalBytes!
                        : null,
                    color: Colors.grey,
                  ),
                ),
              );
            },
            errorBuilder: (context, error, stackTrace) {
              return Container(
                height: 200.h,
                color: Colors.grey.shade900,
                child: Center(
                  child: Icon(
                    Icons.error_outline,
                    color: Colors.grey,
                    size: 120.sp,
                  ),
                ),
              );
            },
          ),
          Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 110.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 12.h),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 92.sp,
                    color: Colors.grey,
                    height: 1.5,
                  ),
                ),
                SizedBox(height: 16.h),
                Wrap(
                  spacing: 8.w,
                  runSpacing: 8.h,
                  children: tech
                      .map(
                        (t) => Text(
                          t,
                          style: TextStyle(
                            fontSize: 86.sp,
                            color: Colors.grey.shade400,
                          ),
                        ),
                      )
                      .toList(),
                ),
                SizedBox(height: 16.h),
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.github, size: 122.sp),
                  color: Colors.grey,
                  onPressed: () async {
                    final uri = Uri.parse(githubLink);
                    if (await canLaunchUrl(uri)) {
                      await launchUrl(uri);
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
