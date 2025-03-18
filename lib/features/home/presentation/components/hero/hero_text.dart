import 'package:flutter/material.dart';
import 'package:flutter_blog/design_system/design_system.dart';

class HeroText extends StatelessWidget {
  const HeroText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'hogumachu tech,',
          style: context.textStyle.header1B.copyWith(
            color: context.colorScheme.onSurface,
          ),
        ),
        Text(
          'Mobile Developer',
          style: context.textStyle.header1T.copyWith(
            color: context.colorScheme.onSurface,
          ),
        ),
      ],
    );
  }
}
