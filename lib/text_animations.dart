import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HashAnimatedTextWidget extends StatefulWidget {
  final String text;
  final Color textcolor;
  final double fontSize;

  const HashAnimatedTextWidget(
      {super.key,
      required this.text,
      this.textcolor = Colors.grey,
      this.fontSize = 24.0});

  @override
  _HashAnimatedTextWidgetState createState() => _HashAnimatedTextWidgetState();
}

class _HashAnimatedTextWidgetState extends State<HashAnimatedTextWidget>
    with SingleTickerProviderStateMixin {
  late String _scrambledText;
  late String _originalText;
  late AnimationController _controller;
  late Color _color;
  double _opacity = 1.0;

  @override
  void initState() {
    super.initState();
    _scrambledText = widget.text;
    _originalText = widget.text;
    _color = widget.textcolor;
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    )
      ..addListener(_scrambleText)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _stopTextAnimation();
        }
      });
    Future.delayed(const Duration(milliseconds: 100), () {
      setState(() {
        _opacity = 1.0;
      });
    });
  }

  void _scrambleText() {
    if (mounted) {
      setState(() {
        final random = Random();
        final runes = _originalText.runes.toList();
        //final index = (_controller.value * (runes.length - 1)).toInt();
        final index = random.nextInt(runes.length);
        runes[index] = random.nextInt(26) + 65;
        _scrambledText = String.fromCharCodes(runes);
      });
    }
  }

  void _startTextAnimation() {
    _controller.forward(from: 0.0);
  }

  void _stopTextAnimation() {
    _controller.stop();
    if (mounted) {
      setState(() {
        _scrambledText = _originalText;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (event) => _startTextAnimation(),
      //onExit: (event) => _stopTextAnimation(),
      child: AnimatedOpacity(
        opacity: _opacity,
        duration: const Duration(milliseconds: 500),
        child: Text(
          _scrambledText,
          style: TextStyle(
            fontFamily: 'Courier',
            color: _color,
            fontSize: widget.fontSize.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
