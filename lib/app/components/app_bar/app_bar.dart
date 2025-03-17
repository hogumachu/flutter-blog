import 'package:flutter/material.dart';
import 'package:flutter_blog/app/components/app_bar/app_bar_menu.dart';
import 'package:flutter_blog/design_system/styled_context.dart';

class BlogAppBar extends StatelessWidget {
  const BlogAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: context.theme.appBarTheme.backgroundColor,
      height: context.inset.appBarHeight,
      padding: EdgeInsets.symmetric(horizontal: context.inset.padding),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: ConstantInset.maxWidth),
        child: Row(
          children: [
            _AppLogo(),
            Spacer(),
            if (context.isDesktop) HorizonAppBarMenu(),
            Spacer(),
            if (!context.isDesktop) DrawerAppBarMenu(),
          ],
        ),
      ),
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
