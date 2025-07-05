import 'package:flutter/material.dart';

import '../core/theme_extensions.dart';

class ThemedFAB extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget icon;
  final String? label;

  const ThemedFAB({
    super.key,
    required this.onPressed,
    required this.icon,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final extensions = theme.extension<ThemeExtensions>();

    return FloatingActionButton.extended(
      onPressed: onPressed,
      backgroundColor: theme.colorScheme.primary,
      foregroundColor: theme.colorScheme.onPrimary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          extensions?.shapes.cornerRadius ?? 16.0,
        ),
      ),
      label:
          label != null
              ? Text(label!, style: extensions?.typography.button)
              : Container(),
      icon: icon,
    );
  }
}
