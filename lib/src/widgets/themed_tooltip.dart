import 'package:flutter/material.dart';

import '../core/theme_extensions.dart';

class ThemedTooltip extends StatelessWidget {
  final String message;
  final Widget child;

  const ThemedTooltip({Key? key, required this.message, required this.child})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final extensions = theme.extension<ThemeExtensions>();

    return Tooltip(
      message: message,
      decoration: BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(
          extensions?.shapes.cornerRadius ?? 4.0,
        ),
      ),
      textStyle: extensions?.typography.caption.copyWith(
        color: theme.colorScheme.onPrimary,
      ),
      child: child,
    );
  }
}
