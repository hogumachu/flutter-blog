import 'package:flutter/material.dart';
import 'package:flutter_blog/app/components/app_bar/app_bar_menu.dart';
import 'package:flutter_blog/design_system/styled_context.dart';

class AppBar extends StatelessWidget {
  const AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _AppLogo(),
        Spacer(),
        if (context.isDesktop) HorizonAppBarMenu(),
        Spacer(),
        if (!context.isDesktop) DrawerAppBarMenu(),
      ],
    );
  }
}

class _AppLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'hogumachu blog',
      style: context.textStyle.titleSB,
    );
  }
}
