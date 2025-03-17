import 'package:flutter/material.dart';
import 'package:flutter_blog/app/shared/app_theme_controller.dart';
import 'package:flutter_blog/design_system/themes/app_theme.dart';
import 'package:flutter_blog/features/home/presentation/home_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class Bootstrap {
  void launch();
}

class BlogBootstrap implements Bootstrap {
  @override
  void launch() {
    return runApp(ProviderScope(child: BlogApp()));
  }
}

class BlogApp extends ConsumerWidget {
  const BlogApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeControllerProvider);
    return MaterialApp(
      darkTheme: AppTheme().dark(context),
      themeMode: theme.value,
      home: HomePage(),
    );
  }
}
