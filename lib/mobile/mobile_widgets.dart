import 'package:flutter/material.dart';
import 'mobile_text_styles.dart';

class HeadingText extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;

  const HeadingText(
    this.text, {
    super.key,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: MobileTextStyles.heading,
      textAlign: textAlign,
    );
  }
}

class SubheadingText extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;

  const SubheadingText(
    this.text, {
    super.key,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: MobileTextStyles.subheading,
      textAlign: textAlign,
    );
  }
}

class BodyText extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;

  const BodyText(
    this.text, {
    super.key,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: MobileTextStyles.body,
      textAlign: textAlign,
    );
  }
}

class BodyTextMedium extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;

  const BodyTextMedium(
    this.text, {
    super.key,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: MobileTextStyles.bodyMedium,
      textAlign: textAlign,
    );
  }
}

class LabelText extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;

  const LabelText(
    this.text, {
    super.key,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: MobileTextStyles.label,
      textAlign: textAlign,
    );
  }
}
