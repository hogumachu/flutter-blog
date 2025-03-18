import 'package:flutter/material.dart';
import 'package:flutter_blog/design_system/styled_context.dart';
import 'package:flutter_blog/design_system/themes/app_color.dart';

class AppTheme {
  ThemeData dark(BuildContext context) {
    return _getThemeData(
        context: context,
        colorScheme: ColorScheme.fromSeed(
            brightness: Brightness.dark, seedColor: AppColors.primaryColor),
        elevatedButtonTextStyle: _darkElevatedButtonTextStyle(context),
        outlinedButtonTextStyle: _darkOutlinedButtonTextStyle(context),
        scaffoldBackgroundColor: AppColors.darkBackgroundColor,
        appBarTheme: AppBarTheme(
            color: AppColors.darkBackgroundColor.withValues(alpha: 0.3)));
  }

  ThemeData light(BuildContext context) {
    return _getThemeData(
        context: context,
        colorScheme: ColorScheme.fromSeed(
            brightness: Brightness.light, seedColor: AppColors.primaryColor),
        elevatedButtonTextStyle: _lightElevatedButtonTextStyle(context),
        outlinedButtonTextStyle: _lightOutlinedButtonTextStyle(context),
        scaffoldBackgroundColor: AppColors.gray[100]!,
        appBarTheme:
            AppBarTheme(color: AppColors.gray[100]!.withValues(alpha: 0.3)));
  }

  ThemeData _getThemeData({
    required BuildContext context,
    required ColorScheme colorScheme,
    required WidgetStateProperty<TextStyle> elevatedButtonTextStyle,
    required WidgetStateProperty<TextStyle> outlinedButtonTextStyle,
    required Color scaffoldBackgroundColor,
    required AppBarTheme appBarTheme,
  }) {
    return ThemeData(
      colorScheme: colorScheme,
      useMaterial3: true,
      scaffoldBackgroundColor: scaffoldBackgroundColor,
      appBarTheme: appBarTheme,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          fixedSize: const WidgetStatePropertyAll(Size.fromHeight(40)),
          backgroundColor: _primaryButtonStates,
          padding: WidgetStatePropertyAll(
            EdgeInsets.symmetric(
              horizontal: ConstantInset.xl,
              vertical: 10,
            ),
          ),
          textStyle: elevatedButtonTextStyle,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          fixedSize: const WidgetStatePropertyAll(Size.fromHeight(40)),
          side: _outlineButtonStates,
          padding: WidgetStatePropertyAll(
              EdgeInsets.symmetric(horizontal: ConstantInset.xl, vertical: 10)),
          textStyle: outlinedButtonTextStyle,
        ),
      ),
    );
  }

  final _primaryButtonStates = WidgetStateProperty.resolveWith((states) {
    if (states.contains(WidgetState.hovered) ||
        states.contains(WidgetState.pressed)) {
      return AppColors.primaryColor.withValues(alpha: 0.7);
    } else {
      return AppColors.primaryColor;
    }
  });

  final _outlineButtonStates = WidgetStateProperty.resolveWith((states) {
    if (states.contains(WidgetState.hovered) ||
        states.contains(WidgetState.pressed)) {
      return BorderSide(color: AppColors.primaryColor.withValues(alpha: 0.7));
    } else {
      return const BorderSide(color: AppColors.primaryColor);
    }
  });

  WidgetStatePropertyAll<TextStyle> _darkElevatedButtonTextStyle(
          BuildContext context) =>
      WidgetStatePropertyAll(context.textStyle.bodyR.copyWith(
        color: AppColors.gray[100],
      ));

  WidgetStatePropertyAll<TextStyle> _lightElevatedButtonTextStyle(
          BuildContext context) =>
      WidgetStatePropertyAll(context.textStyle.bodyR.copyWith(
        color: AppColors.gray[100],
      ));

  WidgetStatePropertyAll<TextStyle> _darkOutlinedButtonTextStyle(
          BuildContext context) =>
      WidgetStatePropertyAll(context.textStyle.bodyR.copyWith(
        color: AppColors.gray[100],
      ));

  WidgetStatePropertyAll<TextStyle> _lightOutlinedButtonTextStyle(
          BuildContext context) =>
      WidgetStatePropertyAll(context.textStyle.bodyR.copyWith(
        color: AppColors.gray[800],
      ));
}
