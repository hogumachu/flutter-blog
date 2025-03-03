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
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: HoverWidget(
        style: HoverStyle(
          backgroundColor: Colors.black.withAlpha(10),
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          contentMargin: const EdgeInsets.all(16),
          hoverColor: Colors.black.withAlpha(30),
        ),
        builder: (context, onHover) => _render(context, onHover),
      ),
    );
  }

  Widget _render(BuildContext context, bool onHover) {
    return builder(onHover);
  }
}
