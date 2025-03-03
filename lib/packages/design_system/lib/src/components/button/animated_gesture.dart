import 'package:flutter/material.dart';

class AnimatedGestureDetector extends StatefulWidget {
  final Widget child;
  final double scaleFactor;
  final Duration duration;
  final Alignment alignment;
  final bool feedback;
  final HitTestBehavior behavior;
  final VoidCallback? onTapUp;
  final VoidCallback? onTap;

  const AnimatedGestureDetector({
    super.key,
    required this.child,
    this.scaleFactor = 0.95,
    this.duration = const Duration(microseconds: 10000),
    this.alignment = Alignment.center,
    this.feedback = true,
    this.behavior = HitTestBehavior.opaque,
    this.onTapUp,
    this.onTap,
  });

  @override
  State<AnimatedGestureDetector> createState() =>
      _AnimatedGestureDetectorState();
}

class _AnimatedGestureDetectorState extends State<AnimatedGestureDetector> {
  double _scale = 1.0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: widget.behavior,
      onTapUp: (_) {
        setState(() => _scale = 1.0);
        widget.onTapUp?.call();
      },
      onTap: () {
        widget.onTap?.call();
      },
      onTapDown: (_) {
        setState(() => _scale = widget.scaleFactor);
      },
      child: AnimatedScale(
        scale: _scale,
        duration: widget.duration,
        child: widget.child,
      ),
    );
  }
}
