import 'package:flutter/material.dart';
import 'package:flutter_blog/app/components/app_bar/app_bar.dart';
import 'package:flutter_blog/features/home/presentation/components/hero_image.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const HeroImage(),
          const BlogAppBar(),
        ],
      ),
    );
  }
}
