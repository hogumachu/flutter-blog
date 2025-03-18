import 'package:flutter/material.dart';
import 'package:flutter_blog/design_system/text_style/app_text_style.dart';

class DesktopTextStyle extends AppTextStyle {
  @override
  TextStyle get bodyB =>
      const TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

  @override
  TextStyle get bodyL =>
      const TextStyle(fontSize: 20, fontWeight: FontWeight.w300);

  @override
  TextStyle get bodyR =>
      const TextStyle(fontSize: 20, fontWeight: FontWeight.w400);

  @override
  TextStyle get bodySB =>
      const TextStyle(fontSize: 20, fontWeight: FontWeight.w600);

  @override
  TextStyle get bodyT =>
      const TextStyle(fontSize: 20, fontWeight: FontWeight.w100);

  @override
  TextStyle get captionB =>
      const TextStyle(fontSize: 17, fontWeight: FontWeight.bold);

  @override
  TextStyle get captionL =>
      const TextStyle(fontSize: 17, fontWeight: FontWeight.w300);

  @override
  TextStyle get captionR =>
      const TextStyle(fontSize: 17, fontWeight: FontWeight.w400);

  @override
  TextStyle get captionSB =>
      const TextStyle(fontSize: 17, fontWeight: FontWeight.w600);

  @override
  TextStyle get captionT =>
      const TextStyle(fontSize: 17, fontWeight: FontWeight.w100);

  @override
  TextStyle get subtitleB =>
      const TextStyle(fontSize: 24, fontWeight: FontWeight.bold);

  @override
  TextStyle get subtitleL =>
      const TextStyle(fontSize: 24, fontWeight: FontWeight.w300);

  @override
  TextStyle get subtitleR =>
      const TextStyle(fontSize: 24, fontWeight: FontWeight.w400);

  @override
  TextStyle get subtitleSB =>
      const TextStyle(fontSize: 24, fontWeight: FontWeight.w600);

  @override
  TextStyle get subtitleT =>
      const TextStyle(fontSize: 24, fontWeight: FontWeight.w100);

  @override
  TextStyle get titleB =>
      const TextStyle(fontSize: 31, fontWeight: FontWeight.bold);

  @override
  TextStyle get titleL =>
      const TextStyle(fontSize: 31, fontWeight: FontWeight.w300);

  @override
  TextStyle get titleR =>
      const TextStyle(fontSize: 31, fontWeight: FontWeight.w400);

  @override
  TextStyle get titleSB =>
      const TextStyle(fontSize: 31, fontWeight: FontWeight.w600);

  @override
  TextStyle get titleT =>
      const TextStyle(fontSize: 31, fontWeight: FontWeight.w100);
}
