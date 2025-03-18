import 'package:flutter/material.dart';
import 'package:flutter_blog/app/components/app_bar/app_bar.dart';
import 'package:flutter_blog/features/home/presentation/components/hero/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          const HeroWidget(),
          const BlogAppBar(),
        ],
      ),
    );
  }
}
