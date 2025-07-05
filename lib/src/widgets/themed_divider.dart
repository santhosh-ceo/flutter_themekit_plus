import 'package:flutter/material.dart';

import '../core/theme_extensions.dart';

class ThemedDivider extends StatelessWidget {
  const ThemedDivider({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final extensions = theme.extension<ThemeExtensions>();

    return Divider(
      color: theme.colorScheme.onSurface.withOpacity(0.2),
      thickness: 1.0,
      indent: extensions?.padding.cardPadding.left ?? 16.0,
      endIndent: extensions?.padding.cardPadding.right ?? 16.0,
    );
  }
}
