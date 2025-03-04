import 'package:flutter/material.dart';
import 'package:flutter_blog/design_system/themes/material_theme.dart';
import 'package:flutter_blog/home/home_page.dart';

abstract class Bootstrap {
  Widget launch();
}

class BlogBootstrap implements Bootstrap {
  @override
  Widget launch() {
    return BlogApp();
  }
}

class BlogApp extends StatelessWidget {
  const BlogApp({super.key});

  @override
  Widget build(BuildContext context) {
    final lightScheme = MaterialTheme.lightScheme();
    final darkScheme = MaterialTheme.darkScheme();
    return MaterialApp(
      theme: ThemeData(
        colorScheme: lightScheme.toColorScheme(),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: darkScheme.toColorScheme(),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}
