import 'package:flutter/material.dart';

typedef HoverBuilder = Widget Function(BuildContext context, bool onHover);

class MouseHoverBuilder extends StatefulWidget {
  const MouseHoverBuilder({
    super.key,
    this.isClickable = false,
    required this.builder,
  });

  final bool isClickable;
  final HoverBuilder builder;

  @override
  State<MouseHoverBuilder> createState() => _MouseHoverBuilderState();
}

class _MouseHoverBuilderState extends State<MouseHoverBuilder> {
  bool _onHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: widget.isClickable
          ? SystemMouseCursors.click
          : SystemMouseCursors.basic,
      onEnter: (_) => setState(() => _onHover = true),
      onExit: (_) => setState(() => _onHover = false),
      child: widget.builder(context, _onHover),
    );
  }
}
