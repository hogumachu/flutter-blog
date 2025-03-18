import 'package:flutter/material.dart';
import 'package:flutter_blog/design_system/design_system.dart';
import 'package:flutter_blog/features/home/presentation/components/hero/hero_image.dart';
import 'package:flutter_blog/features/home/presentation/components/hero/hero_text.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    switch (context.formFactor) {
      case FormFactor.mobile:
        return _MobileHeroWidget();
      case FormFactor.tablet:
        return _TabletHeroWidget();
      case FormFactor.desktop:
        return _DesktopHeroWidget();
    }
  }
}

class _MobileHeroWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        HeroText(),
        SizedBox(
          height: 100,
        ),
        HeroImage()
      ],
    );
  }
}

class _TabletHeroWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeroText(),
        Container(alignment: Alignment.centerRight, child: HeroImage()),
      ],
    );
  }
}

class _DesktopHeroWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        HeroText(),
        HeroImage(),
      ],
    );
  }
}
