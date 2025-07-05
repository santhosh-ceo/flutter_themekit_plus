import 'package:flutter/material.dart';

import '../core/theme_extensions.dart';

class ThemedMenu extends StatelessWidget {
  final List<Widget> items;

  const ThemedMenu({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final extensions = theme.extension<ThemeExtensions>();

    return Material(
      color: theme.colorScheme.surface,
      borderRadius: BorderRadius.circular(
        extensions?.shapes.cornerRadius ?? 8.0,
      ),
      elevation: 4.0,
      child: Column(mainAxisSize: MainAxisSize.min, children: items),
    );
  }
}
