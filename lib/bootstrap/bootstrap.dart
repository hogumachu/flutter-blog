import 'package:flutter/material.dart';

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
    return const Placeholder();
  }
}
