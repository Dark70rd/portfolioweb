// Mobile view root that renders the title page followed by content sections.
// Includes a fixed left sidebar with quick navigation buttons that
// smoothly scroll to sections via `Scrollable.ensureVisible`.
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'mobile_title_page.dart';
import 'mobile_about_page.dart';
import 'mobile_services_page.dart';
import 'mobile_showcase_page.dart';
import 'mobile_contact_page.dart';
import 'mobile_footer.dart';

/// Mobile variant of the portfolio screen.
class MobilePortfolioScreen extends StatefulWidget {
  const MobilePortfolioScreen({super.key});

  @override
  State<MobilePortfolioScreen> createState() => _MobilePortfolioScreenState();
}

/// Manages section visibility after the title animation and enables
/// scroll-to-section navigation using `GlobalKey` anchors.
class _MobilePortfolioScreenState extends State<MobilePortfolioScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool _showOtherPages = false;
  late ScrollController _scrollController;
  final GlobalKey _aboutKey = GlobalKey();
  final GlobalKey _servicesKey = GlobalKey();
  final GlobalKey _showcaseKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

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
          // Main scroll view for mobile content; controller used for section navigation.
          SingleChildScrollView(
            controller: _scrollController,
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
                    // Each section wrapped in a `SizedBox` with a `GlobalKey`
                    // so `Scrollable.ensureVisible` can target it.
                    SizedBox(
                      key: _aboutKey,
                      child: const MobileAboutPage(),
                    ),
                    SizedBox(
                      key: _servicesKey,
                      child: const MobileServicesPage(),
                    ),
                    SizedBox(
                      key: _showcaseKey,
                      child: const MobileShowcasePage(),
                    ),
                    SizedBox(
                      key: _contactKey,
                      child: const MobileContactPage(),
                    ),
                    const MobileFooter(),
                  ],
                ],
              ),
            ),
          ),
          // Fixed left sidebar with external links and in-app section shortcuts.
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
                        launchUrl(Uri.parse('https://github.com/Dark70rd'));
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
                          launchUrl(Uri.parse('mailto:dark70rd@proton.me'));
                        },
                        icon: const Icon(Icons.email),
                        iconSize: 58.sp,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 24.h),
                    // About page button
                    CircleAvatar(
                      backgroundColor: Colors.grey.shade500,
                      radius: 38.sp,
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () => _scrollToSection(_aboutKey),
                        icon: const Icon(Icons.info_outlined),
                        iconSize: 58.sp,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 24.h),
                    // Services page button
                    CircleAvatar(
                      backgroundColor: Colors.grey.shade500,
                      radius: 38.sp,
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () => _scrollToSection(_servicesKey),
                        icon: const Icon(Icons.electric_bolt_sharp),
                        iconSize: 58.sp,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 24.h),
                    // Showcase page button
                    CircleAvatar(
                      backgroundColor: Colors.grey.shade500,
                      radius: 38.sp,
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () => _scrollToSection(_showcaseKey),
                        icon: const Icon(Icons.data_object_sharp),
                        iconSize: 58.sp,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 24.h),
                    // Contact page button
                    CircleAvatar(
                      backgroundColor: Colors.grey.shade500,
                      radius: 38.sp,
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () => _scrollToSection(_contactKey),
                        icon: const Icon(Icons.chat_outlined),
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
