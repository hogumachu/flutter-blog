import 'package:flutter/material.dart';
export 'desktop_text_style.dart';
export 'mobile_text_style.dart';
export 'tablet_text_style.dart';

abstract class AppTextStyle {
  TextStyle get header1B;
  TextStyle get header1SB;
  TextStyle get header1R;
  TextStyle get header1T;
  TextStyle get header1L;

  TextStyle get titleB;
  TextStyle get titleSB;
  TextStyle get titleR;
  TextStyle get titleL;
  TextStyle get titleT;

  TextStyle get subtitleB;
  TextStyle get subtitleSB;
  TextStyle get subtitleR;
  TextStyle get subtitleL;
  TextStyle get subtitleT;

  TextStyle get bodyB;
  TextStyle get bodySB;
  TextStyle get bodyR;
  TextStyle get bodyL;
  TextStyle get bodyT;

  TextStyle get captionB;
  TextStyle get captionSB;
  TextStyle get captionR;
  TextStyle get captionL;
  TextStyle get captionT;
}
