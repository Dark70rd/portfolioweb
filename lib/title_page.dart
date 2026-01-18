import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnimatedTextWidget extends StatefulWidget {
  const AnimatedTextWidget({super.key});

  @override
  _AnimatedTextWidgetState createState() => _AnimatedTextWidgetState();
}

class _AnimatedTextWidgetState extends State<AnimatedTextWidget> {
  bool showSecondAnimation = false;
  bool showThirdAnimation = false;
  bool showFourthAnimation = false;
  bool showFifthAnimation = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          SizedBox(
            height: 50.h,
          ),
          Row(
            children: [
              Expanded(
                child: AnimatedTextKit(
                  repeatForever: false,
                  totalRepeatCount: 1,
                  onFinished: () {
                    setState(() {
                      showSecondAnimation = true;
                    });
                  },
                  animatedTexts: [
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
              ),
            ],
          ),
          if (showSecondAnimation)
            Row(
              children: [
                Expanded(
                  child: AnimatedTextKit(
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
                          fontSize: 50.sp,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          //const SizedBox(
          //  height: 10,
          //),
          if (showThirdAnimation)
            Row(
              children: [
                Expanded(
                  child: AnimatedTextKit(
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
                          fontSize: 50.sp,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
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
                //const SizedBox(width: 200),
                //if (showFifthAnimation)
                //  AnimatedOpacity(
                //    opacity: showFifthAnimation ? 1.0 : 0.0,
                //    duration: const Duration(seconds: 1),
                //    child: Container(
                //      width: MediaQuery.of(context).size.width * 0.15,
                //      height: MediaQuery.of(context).size.height * 0.09,
                //      child: OutlinedButton(
                //        style: OutlinedButton.styleFrom(
                //          shape: const RoundedRectangleBorder(
                //            borderRadius: BorderRadius.zero,
                //          ),
                //        ),
                //        onPressed: () {},
                //        child: const Text(
                //          'Summon Me',
                //          style: TextStyle(
                //            color: Colors.grey,
                //            fontSize: 25,
                //          ),
                //        ),
                //      ),
                //    ),
                //  ),
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
                  AnimatedOpacity(
                    opacity: showFifthAnimation ? 1.0 : 0.0,
                    duration: const Duration(seconds: 1),
                    child: Container(
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
      ),
    );
  }
}
