import 'package:flutter/material.dart';
import 'package:flutter_blog/app/shared/app_theme_controller.dart';
import 'package:flutter_blog/features/home/presentation/home_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class Bootstrap {
  Widget launch();
}

class BlogBootstrap implements Bootstrap {
  @override
  Widget launch() {
    return BlogApp();
  }
}

class BlogApp extends ConsumerWidget {
  const BlogApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeControllerProvider);
    return MaterialApp(
      home: HomeScreen(),
      themeMode: theme.value,
    );
  }
}
