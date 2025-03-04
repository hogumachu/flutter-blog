import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class BlogNavigationBar extends StatelessWidget {
  const BlogNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _logo(context),
        Spacer(),
        _buttons(),
      ],
    );
  }

  Widget _logo(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Text(
      'Flutter blog',
      style: theme.headlineMedium,
    );
  }

  Widget _buttons() {
    return Row(
      children: [
        BlogTextButton(
          builder: (onHover) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Blog'),
            );
          },
        )
      ],
    );
  }
}
