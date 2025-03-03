import 'package:flutter/material.dart';
import 'hover_style.dart';
import 'hover_container.dart';

export 'hover_style.dart';
export 'hover_container.dart';

typedef HoverBuilder = Widget Function(BuildContext context, bool onHover);

class HoverWidget extends StatefulWidget {
  final HoverStyle? style;
  final HoverBuilder? builder;
  final Widget? child;

  final bool Function()? isSelected;
  final void Function(bool)? onHover;
  final MouseCursor? cursor;

  final bool resetHoverOnRebuild;
  final bool Function()? buildWhenOnHover;

  const HoverWidget(
      {super.key,
      this.style,
      this.builder,
      this.isSelected,
      this.onHover,
      this.cursor,
      this.resetHoverOnRebuild = true,
      this.buildWhenOnHover,
      this.child});

  @override
  State<HoverWidget> createState() => _HoverWidgetState();
}

class _HoverWidgetState extends State<HoverWidget> {
  bool _onHover = false;

  @override
  void didUpdateWidget(covariant HoverWidget oldWidget) {
    if (widget.resetHoverOnRebuild) {
      _onHover = false;
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: widget.cursor != null ? widget.cursor! : SystemMouseCursors.click,
      opaque: false,
      onHover: (_) => _setOnHover(true),
      onEnter: (_) => _setOnHover(true),
      onExit: (_) => _setOnHover(false),
      child: HoverContainer(
        style: widget.style ??
            HoverStyle(hoverColor: Theme.of(context).colorScheme.secondary),
        applyStyle: _onHover || (widget.isSelected?.call() ?? false),
        child: widget.child ?? widget.builder!(context, _onHover),
      ),
    );
  }

  void _setOnHover(bool isHovering) {
    if (isHovering == _onHover) return;

    if (widget.buildWhenOnHover?.call() ?? true) {
      setState(() => _onHover = isHovering);
      if (widget.onHover != null) {
        widget.onHover!(isHovering);
      }
    }
  }
}
