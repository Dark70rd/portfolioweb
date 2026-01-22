import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class MobileTitlePage extends StatefulWidget {
  final VoidCallback? onAnimationComplete;
  
  const MobileTitlePage({super.key, this.onAnimationComplete});

  @override
  _MobileTitlePageState createState() => _MobileTitlePageState();
}

// ignore: library_private_types_in_public_api
class _MobileTitlePageState extends State<MobileTitlePage> {
  bool showSecondAnimation = false;
  bool showThirdAnimation = false;
  bool showFourthAnimation = false;
  bool showFifthAnimation = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40.h),
          AnimatedTextKit(
            repeatForever: false,
            totalRepeatCount: 1,
            onFinished: () {
              setState(() {
                showSecondAnimation = true;
              });
            },
            animatedTexts: [
              TypewriterAnimatedText(
                'Greetings, mortals.',
                textStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 104.sp,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          if (showSecondAnimation) SizedBox(height: 20.h),
          if (showSecondAnimation)
            AnimatedTextKit(
              repeatForever: false,
              totalRepeatCount: 1,
              onFinished: () {
                setState(() {
                  showThirdAnimation = true;
                });
              },
              animatedTexts: [
                TypewriterAnimatedText(
                  'I am DARK70RD.',
                  textStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 176.sp,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          if (showThirdAnimation) SizedBox(height: 20.h),
          if (showThirdAnimation)
            AnimatedTextKit(
              repeatForever: false,
              totalRepeatCount: 1,
              onFinished: () {
                setState(() {
                  showFourthAnimation = true;
                });
              },
              animatedTexts: [
                TypewriterAnimatedText(
                  'Ready to unleash your digital desires?',
                  textStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 102.sp,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          if (showFourthAnimation) SizedBox(height: 30.h),
          if (showFourthAnimation)
            AnimatedTextKit(
              repeatForever: false,
              totalRepeatCount: 1,
              onFinished: () {
                setState(() {
                  showFifthAnimation = true;
                });
                // Notify parent that animations are complete
                widget.onAnimationComplete?.call();
              },
              animatedTexts: [
                TypewriterAnimatedText(
                  'Delve into my portfolio and witness the unholy power of code...\n\n'
                  'or click away if you fear the shadows.',
                  speed: const Duration(milliseconds: 15),
                  textStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 68.sp,
                    fontWeight: FontWeight.w300,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          if (showFifthAnimation) SizedBox(height: 40.h),
          if (showFifthAnimation)
            AnimatedOpacity(
              opacity: showFifthAnimation ? 1.0 : 0.0,
              duration: const Duration(seconds: 1),
              curve: Curves.easeIn,
              child: SizedBox(
                width: double.infinity,
                height: 70.h,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                    side: const BorderSide(color: Colors.grey),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Summon Me',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 68.sp,
                    ),
                  ),
                ),
              ),
            ),
          SizedBox(height: 60.h),
        ],
      ),
    );
  }
}
