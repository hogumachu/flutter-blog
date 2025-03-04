import 'package:flutter/material.dart';

class HoverStyle {
  final Color backgroundColor;
  final BoxBorder? border;
  final BorderRadius borderRadius;
  final EdgeInsets contentMargin;
  final Color? foregroundColorOnHover;
  final Color? hoverColor;

  const HoverStyle({
    this.backgroundColor = Colors.transparent,
    this.border,
    this.borderRadius = const BorderRadius.all(Radius.circular(8)),
    this.contentMargin = EdgeInsets.zero,
    this.foregroundColorOnHover,
    this.hoverColor,
  });

  const HoverStyle.transparent({
    this.backgroundColor = Colors.transparent,
    this.border,
    this.borderRadius = const BorderRadius.all(Radius.circular(8)),
    this.contentMargin = EdgeInsets.zero,
    this.foregroundColorOnHover,
    this.hoverColor = Colors.transparent,
  });
}
