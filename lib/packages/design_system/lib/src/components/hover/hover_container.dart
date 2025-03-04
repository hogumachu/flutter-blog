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
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final iconTheme = theme.iconTheme;
    final hoverTheme = theme.copyWith(
      textTheme: textTheme.copyWith(
        bodyMedium: textTheme.bodyMedium?.copyWith(
          color: style.foregroundColorOnHover ?? theme.colorScheme.onSurface,
        ),
      ),
      iconTheme: iconTheme.copyWith(
        color: style.foregroundColorOnHover ?? theme.colorScheme.onSurface,
      ),
    );
    return Container(
      margin: style.contentMargin,
      decoration: BoxDecoration(
        border: style.border,
        color: applyStyle
            ? style.hoverColor ?? Theme.of(context).colorScheme.secondary
            : style.backgroundColor,
        borderRadius: style.borderRadius,
      ),
      child: Theme(
        data: applyStyle ? hoverTheme : Theme.of(context),
        child: child,
      ),
    );
  }
}
