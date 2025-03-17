import 'package:flutter/material.dart';
import 'package:flutter_blog/app/shared/app_shared_preference.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'app_theme_controller.g.dart';

@riverpod
class AppThemeController extends _$AppThemeController {
  @override
  Future<ThemeMode> build() {
    return AppSharedPreference.getAppTheme();
  }
}
