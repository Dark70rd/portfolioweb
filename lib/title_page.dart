// Title page animated introduction with sequential typewriter animations.
//
// This widget reveals lines one after another using `AnimatedTextKit` and
// `TypewriterAnimatedText`. Each segment sets a flag in `onFinished` to
// trigger the next, culminating in a call-to-action button.
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: library_private_types_in_public_api
/// Animated header shown at the top of the desktop view.
class AnimatedTextWidget extends StatefulWidget {
  const AnimatedTextWidget({super.key});

  @override
  _AnimatedTextWidgetState createState() => _AnimatedTextWidgetState();
}

/// Controls the five-step animated sequence via boolean flags.
class _AnimatedTextWidgetState extends State<AnimatedTextWidget> {
  bool showSecondAnimation = false;
  bool showThirdAnimation = false;
  bool showFourthAnimation = false;
  bool showFifthAnimation = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50.h,
        ),
        Row(
          children: [
            AnimatedTextKit(
              repeatForever: false,
              totalRepeatCount: 1,
              onFinished: () {
                setState(() {
                  showSecondAnimation = true;
                });
              },
              animatedTexts: [
                // Step 1: Intro line (default typewriter speed ~50ms/char)
                TypewriterAnimatedText(
                  ' Greetings, mortals.',
                  textStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ],
        ),
        if (showSecondAnimation)
          Row(
            children: [
              AnimatedTextKit(
                repeatForever: false,
                totalRepeatCount: 1,
                onFinished: () {
                  setState(() {
                    showThirdAnimation = true;
                  });
                },
                animatedTexts: [
                  // Step 2: Identity line
                  TypewriterAnimatedText(
                    'I am DARK70RD.',
                    textStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 50.sp,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ],
          ),
        //const SizedBox(
        //  height: 10,
        //),
        if (showThirdAnimation)
          Row(
            children: [
              AnimatedTextKit(
                repeatForever: false,
                totalRepeatCount: 1,
                onFinished: () {
                  setState(() {
                    showFourthAnimation = true;
                  });
                },
                animatedTexts: [
                  // Step 3: Prompt line
                  TypewriterAnimatedText(
                    'Ready to unleash your digital desires?',
                    textStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 50.sp,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ],
          ),
        SizedBox(
          height: 60.h,
        ),
        if (showFourthAnimation)
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              AnimatedTextKit(
                repeatForever: false,
                totalRepeatCount: 1,
                onFinished: () {
                  setState(() {
                    showFifthAnimation = true;
                  });
                },
                animatedTexts: [
                  // Step 4: Long description (faster speed at 15ms/char)
                  TypewriterAnimatedText(
                    'Delve into my portfolio and witness the unholy power of code...\n\n'
                    'or click away if you fear the shadows.',
                    speed: const Duration(milliseconds: 15),
                    textStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w300,
                      height: 1.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        SizedBox(
          height: 40.h,
        ),
        if (showFifthAnimation)
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Row(
              children: [
                // Step 5: Reveal CTA button with 1s fade
                AnimatedOpacity(
                  opacity: showFifthAnimation ? 1.0 : 0.0,
                  duration: const Duration(seconds: 1),
                  child: SizedBox(
                    width: 0.1.sw,
                    height: 0.07.sh,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                      ),
                      onPressed: () {
                        launchUrl(
                            Uri.parse('https://forms.gle/ruqL9FpSZNrNqGUz5'));
                      },
                      child: Text(
                        'Summon Me',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18.sp,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
      ],
    );
  }
}
