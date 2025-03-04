import 'package:flutter/material.dart';
import 'package:flutter_blog/design_system/components/button/blog_text_button.dart';
import 'package:flutter_blog/design_system/components/navigation/navigation_bar_constants.dart';

class BlogNavigationBar extends StatefulWidget {
  final bool isOnTap;

  const BlogNavigationBar({
    super.key,
    required this.isOnTap,
  });

  @override
  State<BlogNavigationBar> createState() => _BlogNavigationBarState();
}

class _BlogNavigationBarState extends State<BlogNavigationBar> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      height: NavigationBarConstants.containerHeight,
      decoration: BoxDecoration(
        color: widget.isOnTap ? Colors.transparent : colorScheme.surface,
        borderRadius: NavigationBarConstants.containerRadius,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 4,
          horizontal: 8,
        ),
        child: Row(
          children: [
            _logo(context),
            Spacer(),
            _buttons(context),
          ],
        ),
      ),
    );
  }

  Widget _logo(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Text(
      'Flutter blog',
      style: theme.headlineSmall,
    );
  }

  Widget _buttons(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Row(
      children: [
        BlogTextButton(
          builder: (onHover) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Text(
                '블로그',
                style: theme.bodyMedium,
              ),
            );
          },
          onTap: () {},
        )
      ],
    );
  }
}
