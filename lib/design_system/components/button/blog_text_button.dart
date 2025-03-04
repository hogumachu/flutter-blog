import 'package:flutter/material.dart';
import '../hover/hover_widget.dart';

typedef TextBuilder = Widget Function(bool onHover);

class BlogTextButton extends StatelessWidget {
  final TextBuilder builder;
  final VoidCallback? onTap;

  const BlogTextButton({
    super.key,
    required this.builder,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: HoverWidget(
        style: HoverStyle(
          backgroundColor: colorScheme.surfaceContainerHigh,
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          contentMargin: const EdgeInsets.all(16),
          hoverColor: colorScheme.surfaceContainerHighest,
        ),
        builder: (context, onHover) => _render(context, onHover),
      ),
    );
  }

  Widget _render(BuildContext context, bool onHover) {
    return builder(onHover);
  }
}
