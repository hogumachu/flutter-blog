import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_blog/design_system/design_system.dart';
import 'package:flutter_svg/svg.dart';

class HeroImage extends StatelessWidget {
  const HeroImage({super.key});

  @override
  Widget build(BuildContext context) {
    return _HeroImageContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                ImagePath.wavingHand,
                width: context.width / 8,
              ),
              Spacer(),
              SvgPicture.asset(
                ImagePath.mobilePhone,
                width: context.width / 8,
              ),
            ],
          ),
          const Spacer(),
          SvgPicture.asset(
            ImagePath.grinningSquintingFace,
            width: context.width / 8,
          ),
        ],
      ),
    );
  }
}

class _HeroImageContainer extends StatefulWidget {
  final Widget child;

  const _HeroImageContainer({required this.child});

  @override
  State<_HeroImageContainer> createState() => _HeroImageContainerState();
}

class _HeroImageContainerState extends State<_HeroImageContainer>
    with SingleTickerProviderStateMixin {
  late Timer timer;
  double scale = _AnimationConstant.minimumScale;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(_AnimationConstant.duration, (Timer t) {
      setState(() {
        scale = scale == _AnimationConstant.minimumScale
            ? _AnimationConstant.maximumScale
            : _AnimationConstant.minimumScale;
      });
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: context.width / 3,
      height: context.width / 3,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            blurRadius: 50,
            spreadRadius: 25,
            color: context.colorScheme.primary.withValues(alpha: 0.1),
          ),
        ],
      ),
      child: AnimatedScale(
        scale: scale,
        duration: _AnimationConstant.duration,
        child: widget.child,
      ),
    );
  }
}

class _AnimationConstant {
  static const duration = Duration(milliseconds: 600);
  static const minimumScale = 0.97;
  static const maximumScale = 1.0;
}
