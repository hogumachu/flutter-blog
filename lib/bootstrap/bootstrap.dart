import 'package:flutter/material.dart';
import 'package:flutter_blog/design_system/themes/material_theme.dart';
import 'package:flutter_blog/design_system/themes/util.dart';
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
    final brightness = View.of(context).platformDispatcher.platformBrightness;
    TextTheme textTheme =
        createTextTheme(context, "Noto Sans KR", "Noto Sans KR");
    MaterialTheme theme = MaterialTheme(textTheme);
    return MaterialApp(
      theme: brightness == Brightness.light ? theme.light() : theme.dark(),
      home: HomeScreen(),
    );
  }
}
