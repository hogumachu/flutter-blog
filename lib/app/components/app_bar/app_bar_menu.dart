import 'package:flutter/material.dart';
import 'package:flutter_blog/app/components/app_bar/app_menu_list.dart';
import 'package:flutter_blog/design_system/components/button/blog_text_button.dart';

class HorizonAppBarMenu extends StatelessWidget {
  const HorizonAppBarMenu({super.key});

  // TODO: - App Menu Selected, Tapped 설정
  @override
  Widget build(BuildContext context) {
    return Row(
      children: AppMenuList.items(context)
          .map((e) => HorizonAppBarMenuItem(
              text: e.title, isSelected: true, onTap: () {}))
          .toList(),
    );
  }
}

class DrawerAppBarMenu extends StatelessWidget {
  const DrawerAppBarMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class HorizonAppBarMenuItem extends StatelessWidget {
  const HorizonAppBarMenuItem({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  // TODO: - Selected, Hovering 설정

  @override
  Widget build(BuildContext context) {
    return BlogTextButton(
      builder: (isHovering) => Text(text),
      onTap: onTap,
    );
  }
}
