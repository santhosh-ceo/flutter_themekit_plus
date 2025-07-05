import 'package:flutter/material.dart';

import '../core/theme_extensions.dart';

class ThemedDrawer extends StatelessWidget {
  final List<Widget> items;

  const ThemedDrawer({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final extensions = theme.extension<ThemeExtensions>();

    return Drawer(
      backgroundColor: theme.colorScheme.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(
          right: Radius.circular(extensions?.shapes.cornerRadius ?? 16.0),
        ),
      ),
      child: ListView(
        padding: extensions?.padding.cardPadding ?? EdgeInsets.all(16.0),
        children: items,
      ),
    );
  }
}
