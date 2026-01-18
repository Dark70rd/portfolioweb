import 'package:flutter/material.dart';
import 'showcase.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProjectShowcase extends StatelessWidget {
  final String imageUrl;
  final String shortDescription;
  final String projectTitle;
  final List<String> projectResources;
  final String githubLink;

  const ProjectShowcase({
    super.key,
    required this.imageUrl,
    required this.shortDescription,
    required this.projectTitle,
    required this.projectResources,
    required this.githubLink,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 0.65.sh,
      width: double.infinity,
      child: Stack(
        children: [
          // Image
          Positioned(
          top: 0.02.sh,
          left: 20.w,
          child: SizedBox(
            height: 0.60.sh,
            width: 0.5.sw,
            child: Image.network(
              imageUrl,
              fit: BoxFit.contain,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded /
                            loadingProgress.expectedTotalBytes!
                        : null,
                    color: Colors.grey,
                  ),
                );
              },
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: Colors.grey.shade900,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.error_outline,
                          color: Colors.grey,
                          size: 48.sp,
                        ),
                        SizedBox(height: 8.h),
                        const Text(
                          'Failed to load image',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),

        // Short description
        Positioned(
          top: 0.1667.sh,
          right: 10.w,
          child: Container(
            alignment: Alignment.center,
            height: 0.18.sh,
            width: 0.35.sw,
            color: Colors.grey.shade900.withOpacity(1.0),
            child: Wrap(
              alignment: WrapAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: CustomText(
                    text: shortDescription,
                    textsize: 27,
                    color: Colors.grey,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.75,
                  ),
                ),
              ],
            ),
          ),
        ),

        // Project Title
        Positioned(
          top: 16.h,
          right: 10.w,
          child: SizedBox(
            height: 0.10.sh,
            width: 0.25.sw,
            child: Wrap(
              alignment: WrapAlignment.end,
              children: [
                CustomText(
                  text: projectTitle,
                  textsize: 27,
                  color: Colors.grey,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.75,
                ),
              ],
            ),
          ),
        ),

        // Project resources
        Positioned(
          top: 0.36.sh,
          right: 10.w,
          child: SizedBox(
            height: 0.08.sh,
            width: 0.25.sw,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: projectResources.map((resource) {
                return Padding(
                  padding: EdgeInsets.only(right: 16.w),
                  child: CustomText(
                    text: resource,
                    textsize: 14,
                    color: Colors.grey,
                    letterSpacing: 1.75,
                    fontWeight: FontWeight.normal,
                  ),
                );
              }).toList(),
            ),
          ),
        ),

        // Github link
        Positioned(
          top: 0.42.sh,
          right: 10.w,
          child: SizedBox(
            height: 0.08.sh,
            width: 0.25.sw,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: const FaIcon(FontAwesomeIcons.github),
                  color: Colors.white.withOpacity(0.3),
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
        ),
      ],
      ),
    );
  }
}
