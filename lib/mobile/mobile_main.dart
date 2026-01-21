import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'mobile_title_page.dart';
import 'mobile_about_page.dart';
import 'mobile_services_page.dart';
import 'mobile_showcase_page.dart';
import 'mobile_contact_page.dart';
import 'mobile_footer.dart';

class MobilePortfolioScreen extends StatefulWidget {
  const MobilePortfolioScreen({super.key});

  @override
  State<MobilePortfolioScreen> createState() => _MobilePortfolioScreenState();
}

class _MobilePortfolioScreenState extends State<MobilePortfolioScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool _showOtherPages = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        titleSpacing: 36.w,
        title: Image.asset(
          'assets/images/dark-bg-icon-crop.png',
          fit: BoxFit.cover,
          height: 40.h,
          color: Colors.grey,
          errorBuilder: (context, error, stackTrace) {
            return Icon(
              Icons.code,
              color: Colors.grey,
              size: 80.sp,
            );
          },
        ),
      ),
      body: Stack(
        clipBehavior: Clip.hardEdge,
        fit: StackFit.expand,
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 180.w, right: 60.w),
              child: Column(
                children: [
                  MobileTitlePage(
                    onAnimationComplete: () {
                      setState(() {
                        _showOtherPages = true;
                      });
                    },
                  ),
                  if (_showOtherPages) ...[
                    const MobileAboutPage(),
                    const MobileServicesPage(),
                    const MobileShowcasePage(),
                    const MobileContactPage(),
                    const MobileFooter(),
                  ],
                ],
              ),
            ),
          ),
          // Fixed left sidebar
          Positioned(
            left: 0,
            top: 0,
            bottom: 0,
            child: Container(
              height: double.infinity,
              width: 180.w,
              color: Colors.transparent,
              child: Padding(
                padding: EdgeInsets.only(left: 8.0.w, right: 8.0.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(),
                    // GitHub icon button
                    IconButton(
                      onPressed: () {
                        // TODO: Add url_launcher to open https://github.com/Dark70rd
                      },
                      icon: const FaIcon(FontAwesomeIcons.github),
                      iconSize: 68.sp,
                      color: Colors.grey.shade500,
                    ),
                    SizedBox(height: 24.h),
                    // Email icon button
                    CircleAvatar(
                      backgroundColor: Colors.grey.shade500,
                      radius: 38.sp,
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          // TODO: Add url_launcher to open mailto:your.email@example.com
                        },
                        icon: const Icon(Icons.email),
                        iconSize: 58.sp,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 24.h),
                    // Vertical line
                    Expanded(
                      child: Container(
                        width: 8.w,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
