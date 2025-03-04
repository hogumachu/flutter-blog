import 'package:flutter/material.dart';
import 'package:flutter_blog/design_system/design_system.dart';

class NavigationContainer extends StatefulWidget {
  final bool isOnTop;
  final Widget child;

  const NavigationContainer({
    super.key,
    required this.isOnTop,
    required this.child,
  });

  @override
  State<NavigationContainer> createState() => _NavigationContainerState();
}

class _NavigationContainerState extends State<NavigationContainer> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: colorScheme.surface,
      body: Stack(
        children: [
          widget.child,
          BlogNavigationBar(
            isOnTap: widget.isOnTop,
          ),
        ],
      ),
    );
  }
}
