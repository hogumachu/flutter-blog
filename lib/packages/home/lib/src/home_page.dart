import 'package:flutter/material.dart';
import 'package:design_system/design_system.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: colorScheme.surface,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlogNavigationBar(),
          Spacer(),
        ],
      ),
    );
  }
}
