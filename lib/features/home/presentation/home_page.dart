import 'package:flutter/material.dart';
import 'package:flutter_blog/design_system/components/navigation/navigation_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();
  bool _isOnTap = true;

  @override
  void initState() {
    _scrollController.addListener(() {
      if (_scrollController.offset <= 10 && _isOnTap == false) {
        setState(() => _isOnTap = true);
      } else if (_scrollController.offset > 10 && _isOnTap == true) {
        setState(() => _isOnTap = false);
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return NavigationContainer(
      isOnTop: _isOnTap,
      child: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    return SingleChildScrollView(
      controller: _scrollController,
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          _greeting(context),
        ],
      ),
    );
  }

  Widget _greeting(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hogumachu,\nTech',
              style: theme.textTheme.displayLarge,
            ),
            Text(
              'Mobile developer',
              style: theme.textTheme.displaySmall,
            ),
          ],
        ),
        Spacer(),
        Container(
          color: Colors.pink,
          height: 500,
          width: 500,
        ),
      ],
    );
  }
}
