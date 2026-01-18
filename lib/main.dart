import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/widgets.dart';
import 'package:my_portfolio_web/contact_view_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'title_page.dart';
import 'about_page.dart';
import 'my_services.dart';
import 'showcase.dart';
import 'footer.dart';
import 'constants.dart';
import 'theme_manager.dart';
import 'mobile/mobile_main.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyPortfolioApp());
}

class MyPortfolioApp extends StatelessWidget {
  const MyPortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1440, 900),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'My Portfolio',
          theme: AppTheme.lightTheme,
          debugShowCheckedModeBanner: false,
          home: ResponsiveHome(),
        );
      },
    );
  }
}

class ResponsiveHome extends StatelessWidget {
  const ResponsiveHome({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Switch to mobile layout for screens smaller than 800px width
        if (constraints.maxWidth < 800) {
          return const MobilePortfolioScreen();
        } else {
          return const MyPortfolioScreen();
        }
      },
    );
  }
}

class NoiseBackground extends StatelessWidget {
  final Widget child;

  const NoiseBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: NoisePainter(0.0),
      child: child,
    );
  }
}

class NoisePainter extends CustomPainter {
  final double progress;

  NoisePainter(this.progress);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.grey.withOpacity(AppConstants.noiseOpacity);

    // Use progress as seed for deterministic but varied noise pattern
    final seed = (progress * 1000).toInt();
    final particleRandom = Random(seed);

    for (int i = 0; i < AppConstants.noiseParticleCount; i++) {
      final x = particleRandom.nextDouble() * size.width;
      final y = particleRandom.nextDouble() * size.height;
      canvas.drawCircle(Offset(x, y), AppConstants.noiseParticleRadius, paint);
    }
  }

  @override
  bool shouldRepaint(covariant NoisePainter oldDelegate) {
    // Only repaint if progress changed significantly (every 0.1%)
    return (progress * 1000).toInt() != (oldDelegate.progress * 1000).toInt();
  }
}

class MyPortfolioScreen extends StatefulWidget {
  const MyPortfolioScreen({super.key});

  @override
  _MyPortfolioScreenState createState() => _MyPortfolioScreenState();
}

class _MyPortfolioScreenState extends State<MyPortfolioScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _noiseController;
  final ScrollController _scrollController = ScrollController();
  Timer? _scrollEnableTimer;
  double _opacity1 = 0.0;
  double _opacity2 = 0.0;
  double _opacity3 = 0.0;
  double _opacity4 = 0.0;
  ScrollPhysics _scrollPhysics = NeverScrollableScrollPhysics();

  @override
  void initState() {
    super.initState();

    _noiseController = AnimationController(
      duration: const Duration(seconds: 9999),
      vsync: this,
    )..repeat();

    _scrollController.addListener(
      () {
        setState(() {
          _opacity1 =
              _scrollController.offset > AppConstants.scrollThresholdSection1
                  ? 1.0
                  : 0.0;
          _opacity2 =
              _scrollController.offset > AppConstants.scrollThresholdSection2
                  ? 1.0
                  : 0.0;
          _opacity3 =
              _scrollController.offset > AppConstants.scrollThresholdSection3
                  ? 1.0
                  : 0.0;
          _opacity4 =
              _scrollController.offset > AppConstants.scrollThresholdSection4
                  ? 1.0
                  : 0.0;
        });
      },
    );
    _scrollEnableTimer = Timer(AppConstants.scrollEnableDelay, () {
      if (mounted) {
        setState(() {
          _scrollPhysics = AlwaysScrollableScrollPhysics();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final scrheight = MediaQuery.of(context).size.height;
    final scrwidth = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.black,
      child: AnimatedBuilder(
        animation: _noiseController,
        builder: (context, child) {
          return CustomPaint(
            painter: NoisePainter(_noiseController.value),
            child: child,
          );
        },
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(80.h),
            child: AppBar(
              backgroundColor: Colors.transparent,
              surfaceTintColor: Colors.transparent,
              elevation: 0,
              toolbarHeight: 80.h,
              title: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(5.w),
                    child: Image.asset(
                      'assets/images/dark-bg-icon.png',
                      fit: BoxFit.cover,
                      height: 150.h,
                      color: Colors.grey,
                      errorBuilder: (context, error, stackTrace) {
                        return SizedBox(
                          height: 150.h,
                          child: Icon(
                            Icons.code,
                            color: Colors.grey,
                            size: 60.sp,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: Stack(
            children: <Widget>[
              SingleChildScrollView(
                controller: _scrollController,
                physics: _scrollPhysics,
                child: Padding(
                  padding: EdgeInsets.only(
                      top: 8.h,
                      bottom: 8.h,
                      left: scrwidth * AppConstants.horizontalPaddingRatio,
                      right: scrwidth * AppConstants.horizontalPaddingRatio),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                          height: scrheight * AppConstants.titleSectionHeight,
                          width: scrwidth,
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: 40.h, left: 20.w, right: 20.w),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: AnimatedTextWidget(),
                            ),
                          )),
                      AnimatedOpacity(
                        opacity: _opacity1,
                        duration: AppConstants.fadeAnimationDuration,
                        child: SizedBox(
                          height: scrheight * AppConstants.aboutSectionHeight,
                          width: scrwidth,
                          child: const AboutPage(),
                        ),
                      ),
                      AnimatedOpacity(
                        opacity: _opacity2,
                        duration: AppConstants.fadeAnimationDuration,
                        child: SizedBox(
                          height: scrheight * AppConstants.serviceSectionHeight,
                          width: scrwidth,
                          child: const ServicePage(),
                        ),
                      ),
                      AnimatedOpacity(
                        opacity: _opacity3,
                        duration: AppConstants.fadeAnimationDuration,
                        child: SizedBox(
                          height:
                              scrheight * AppConstants.showcaseSectionHeight,
                          width: scrwidth,
                          child: const ShowcasePage(),
                        ),
                      ),
                      AnimatedOpacity(
                        opacity: _opacity4,
                        duration: AppConstants.fadeAnimationDuration,
                        child: SizedBox(
                          height: scrheight * AppConstants.contactSectionHeight,
                          width: scrwidth,
                          child: const ContactPageView(),
                        ),
                      ),
                      // Add more containers as needed
                      const Footer(),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width *
                      AppConstants.sidebarWidthRatio,
                  height: scrheight,
                  color: Colors
                      .transparent, // Just for demonstration, adjust as needed
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(10.w),
                            child: Divider(
                              color: Colors.grey,
                              thickness: 5.w,
                              //height: BorderSide.strokeAlignCenter,
                            ),
                          ),
                        ),
                        RotatedBox(
                          quarterTurns: 1,
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(FontAwesomeIcons.github),
                            iconSize: 40.sp,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          width: 200.w,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 0,
                top: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width *
                      AppConstants.sidebarWidthRatio,
                  height: scrheight,
                  color: Colors
                      .transparent, // Just for demonstration, adjust as needed
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(10.w),
                            child:
                                Divider(color: Colors.grey, thickness: 5.w),
                          ),
                        ),
                        Text(
                          AppConstants.email,
                          style:
                              TextStyle(color: Colors.grey, fontSize: 24.sp),
                        ),
                        SizedBox(width: 200.w),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _noiseController.dispose();
    _scrollController.dispose();
    _scrollEnableTimer?.cancel();
    super.dispose();
  }
}
