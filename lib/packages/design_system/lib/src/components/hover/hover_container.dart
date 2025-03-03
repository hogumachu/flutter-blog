import 'package:flutter/material.dart';
import 'hover_style.dart';

class HoverContainer extends StatelessWidget {
  final HoverStyle style;
  final Widget child;
  final bool applyStyle;

  const HoverContainer({
    super.key,
    required this.style,
    this.applyStyle = false,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
