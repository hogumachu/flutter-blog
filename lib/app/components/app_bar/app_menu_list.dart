import 'package:flutter/widgets.dart';

class AppMenuList {
  static List<AppMenu> items(BuildContext context) {
    // TODO: - App Menu 추가
    return [];
  }
}

class AppMenu {
  final String title;
  final String path;

  AppMenu({required this.title, required this.path});
}
