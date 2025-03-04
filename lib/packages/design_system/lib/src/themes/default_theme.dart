import 'package:flutter/material.dart';
import 'blog_theme.dart';

class DefaultThemeConstants {
  static const white = Color(0xFFFFFFFF);
  static const black = Color(0xFF000000);
  static const blue1 = Color(0xFF478BFF);
  static const blue2 = Color(0xFF3A71D0);
  static const green1 = Color(0xFF4CEC8B);
  static const green2 = Color(0xFF37A663);
  static const yellow1 = Color(0xFFDDF34E);
  static const yellow2 = Color(0xFFA0AE43);
  static const background1 = Color(0xFF131314);
  static const background2 = Color(0xFF1C1C1D);
  static const background3 = Color(0xFF252527);
  static const gray1 = Color(0xFFB7B7B7);
  static const gray2 = Color(0xFF616161);
}

class DefaultTheme extends BlogTheme {
  // TODO: - Light Theme 설정
  const DefaultTheme.light() : this.dark();

  const DefaultTheme.dark()
      : super(
          primary1: DefaultThemeConstants.blue1,
          primary2: DefaultThemeConstants.blue2,
          secondary1: DefaultThemeConstants.green1,
          secondary2: DefaultThemeConstants.green2,
          tertiary1: DefaultThemeConstants.yellow1,
          tertiary2: DefaultThemeConstants.yellow2,
          text1: DefaultThemeConstants.white,
          text2: DefaultThemeConstants.gray1,
          text3: DefaultThemeConstants.gray2,
          background1: DefaultThemeConstants.black,
          background2: DefaultThemeConstants.background1,
          background3: DefaultThemeConstants.background2,
          hoverBackground1: const Color(0xFF1A1A1A),
          hoverBackground2: const Color(0xFF2B2B2C),
          hoverBackground3: const Color(0xFF333334),
        );
}
