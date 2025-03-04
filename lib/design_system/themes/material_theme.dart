import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff0058be),
      surfaceTint: Color(0xff005ac2),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff2271e3),
      onPrimaryContainer: Color(0xfffefcff),
      secondary: Color(0xff006d38),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff4cec8b),
      onSecondaryContainer: Color(0xff006734),
      tertiary: Color(0xff596400),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffddf34e),
      onTertiaryContainer: Color(0xff616e00),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfff9f9f9),
      onSurface: Color(0xff1b1b1b),
      onSurfaceVariant: Color(0xff444748),
      outline: Color(0xff747878),
      outlineVariant: Color(0xffc4c7c8),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff303030),
      inversePrimary: Color(0xffaec6ff),
      primaryFixed: Color(0xffd8e2ff),
      onPrimaryFixed: Color(0xff001a42),
      primaryFixedDim: Color(0xffaec6ff),
      onPrimaryFixedVariant: Color(0xff004395),
      secondaryFixed: Color(0xff62ff9b),
      onSecondaryFixed: Color(0xff00210d),
      secondaryFixedDim: Color(0xff3ee182),
      onSecondaryFixedVariant: Color(0xff005228),
      tertiaryFixed: Color(0xffd8ee49),
      onTertiaryFixed: Color(0xff191e00),
      tertiaryFixedDim: Color(0xffbcd12d),
      onTertiaryFixedVariant: Color(0xff424b00),
      surfaceDim: Color(0xffdadada),
      surfaceBright: Color(0xfff9f9f9),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff3f3f3),
      surfaceContainer: Color(0xffeeeeee),
      surfaceContainerHigh: Color(0xffe8e8e8),
      surfaceContainerHighest: Color(0xffe2e2e2),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff003475),
      surfaceTint: Color(0xff005ac2),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff1069db),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff003f1e),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff007e41),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff333a00),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff667400),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff9f9f9),
      onSurface: Color(0xff111111),
      onSurfaceVariant: Color(0xff333738),
      outline: Color(0xff4f5354),
      outlineVariant: Color(0xff6a6e6e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff303030),
      inversePrimary: Color(0xffaec6ff),
      primaryFixed: Color(0xff1069db),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff0051b0),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff007e41),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff006231),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff667400),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff4f5a00),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffc6c6c6),
      surfaceBright: Color(0xfff9f9f9),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff3f3f3),
      surfaceContainer: Color(0xffe8e8e8),
      surfaceContainerHigh: Color(0xffdddddd),
      surfaceContainerHighest: Color(0xffd1d1d1),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff002a62),
      surfaceTint: Color(0xff005ac2),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff004699),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff003417),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff00552a),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff292f00),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff454e00),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff9f9f9),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff292d2d),
      outlineVariant: Color(0xff464a4a),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff303030),
      inversePrimary: Color(0xffaec6ff),
      primaryFixed: Color(0xff004699),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff00306e),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff00552a),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff003b1c),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff454e00),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff2f3600),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffb9b9b9),
      surfaceBright: Color(0xfff9f9f9),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f1f1),
      surfaceContainer: Color(0xffe2e2e2),
      surfaceContainerHigh: Color(0xffd4d4d4),
      surfaceContainerHighest: Color(0xffc6c6c6),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffaec6ff),
      surfaceTint: Color(0xffaec6ff),
      onPrimary: Color(0xff002e6a),
      primaryContainer: Color(0xff4d8eff),
      onPrimaryContainer: Color(0xff002558),
      secondary: Color(0xffafffc1),
      onSecondary: Color(0xff00391a),
      secondaryContainer: Color(0xff4cec8b),
      onSecondaryContainer: Color(0xff006734),
      tertiary: Color(0xffffffff),
      onTertiary: Color(0xff2d3400),
      tertiaryContainer: Color(0xffd8ee49),
      onTertiaryContainer: Color(0xff5e6a00),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff131313),
      onSurface: Color(0xffe2e2e2),
      onSurfaceVariant: Color(0xffc4c7c8),
      outline: Color(0xff8e9192),
      outlineVariant: Color(0xff444748),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe2e2e2),
      inversePrimary: Color(0xff005ac2),
      primaryFixed: Color(0xffd8e2ff),
      onPrimaryFixed: Color(0xff001a42),
      primaryFixedDim: Color(0xffaec6ff),
      onPrimaryFixedVariant: Color(0xff004395),
      secondaryFixed: Color(0xff62ff9b),
      onSecondaryFixed: Color(0xff00210d),
      secondaryFixedDim: Color(0xff3ee182),
      onSecondaryFixedVariant: Color(0xff005228),
      tertiaryFixed: Color(0xffd8ee49),
      onTertiaryFixed: Color(0xff191e00),
      tertiaryFixedDim: Color(0xffbcd12d),
      onTertiaryFixedVariant: Color(0xff424b00),
      surfaceDim: Color(0xff131313),
      surfaceBright: Color(0xff393939),
      surfaceContainerLowest: Color(0xff0e0e0e),
      surfaceContainerLow: Color(0xff1b1b1b),
      surfaceContainer: Color(0xff1f1f1f),
      surfaceContainerHigh: Color(0xff2a2a2a),
      surfaceContainerHighest: Color(0xff353535),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffcfdcff),
      surfaceTint: Color(0xffaec6ff),
      onPrimary: Color(0xff002455),
      primaryContainer: Color(0xff4d8eff),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffafffc1),
      onSecondary: Color(0xff00391a),
      secondaryContainer: Color(0xff4cec8b),
      onSecondaryContainer: Color(0xff004722),
      tertiary: Color(0xffffffff),
      onTertiary: Color(0xff2d3400),
      tertiaryContainer: Color(0xffd8ee49),
      onTertiaryContainer: Color(0xff434d00),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff131313),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffdadddd),
      outline: Color(0xffafb2b3),
      outlineVariant: Color(0xff8d9191),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe2e2e2),
      inversePrimary: Color(0xff004597),
      primaryFixed: Color(0xffd8e2ff),
      onPrimaryFixed: Color(0xff00102e),
      primaryFixedDim: Color(0xffaec6ff),
      onPrimaryFixedVariant: Color(0xff003475),
      secondaryFixed: Color(0xff62ff9b),
      onSecondaryFixed: Color(0xff001506),
      secondaryFixedDim: Color(0xff3ee182),
      onSecondaryFixedVariant: Color(0xff003f1e),
      tertiaryFixed: Color(0xffd8ee49),
      onTertiaryFixed: Color(0xff0f1300),
      tertiaryFixedDim: Color(0xffbcd12d),
      onTertiaryFixedVariant: Color(0xff333a00),
      surfaceDim: Color(0xff131313),
      surfaceBright: Color(0xff444444),
      surfaceContainerLowest: Color(0xff070707),
      surfaceContainerLow: Color(0xff1d1d1d),
      surfaceContainer: Color(0xff282828),
      surfaceContainerHigh: Color(0xff323232),
      surfaceContainerHighest: Color(0xff3e3e3e),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffecefff),
      surfaceTint: Color(0xffaec6ff),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffa7c2ff),
      onPrimaryContainer: Color(0xff000a22),
      secondary: Color(0xffbfffcc),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xff4cec8b),
      onSecondaryContainer: Color(0xff00220d),
      tertiary: Color(0xffffffff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffd8ee49),
      onTertiaryContainer: Color(0xff272d00),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff131313),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xffeef0f1),
      outlineVariant: Color(0xffc0c3c4),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe2e2e2),
      inversePrimary: Color(0xff004597),
      primaryFixed: Color(0xffd8e2ff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffaec6ff),
      onPrimaryFixedVariant: Color(0xff00102e),
      secondaryFixed: Color(0xff62ff9b),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xff3ee182),
      onSecondaryFixedVariant: Color(0xff001506),
      tertiaryFixed: Color(0xffd8ee49),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffbcd12d),
      onTertiaryFixedVariant: Color(0xff0f1300),
      surfaceDim: Color(0xff131313),
      surfaceBright: Color(0xff505050),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff1f1f1f),
      surfaceContainer: Color(0xff303030),
      surfaceContainerHigh: Color(0xff3b3b3b),
      surfaceContainerHighest: Color(0xff474747),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.surface,
        canvasColor: colorScheme.surface,
      );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
