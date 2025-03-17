import 'package:flutter/material.dart';
import '../../../app/components/app_bar/app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Placeholder(),
          const BlogAppBar(),
        ],
      ),
    );
  }
}
