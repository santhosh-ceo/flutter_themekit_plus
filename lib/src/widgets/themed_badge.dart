import 'package:flutter/material.dart';
import 'package:flutter_themekit_plus/src/widgets/themed_button.dart';

import '../core/theme_extensions.dart';

class ThemedBadge extends StatelessWidget {
  final String label;
  final ButtonVariant variant;

  const ThemedBadge({
    Key? key,
    required this.label,
    this.variant = ButtonVariant.primary,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final extensions = theme.extension<ThemeExtensions>();

    Color backgroundColor;
    Color foregroundColor;

    switch (variant) {
      case ButtonVariant.success:
        backgroundColor = Colors.green;
        foregroundColor = Colors.white;
        break;
      case ButtonVariant.danger:
        backgroundColor = Colors.red;
        foregroundColor = Colors.white;
        break;
      case ButtonVariant.info:
        backgroundColor = Colors.blue;
        foregroundColor = Colors.white;
        break;
      case ButtonVariant.secondary:
        backgroundColor = theme.colorScheme.secondary;
        foregroundColor = theme.colorScheme.onSecondary;
        break;
      case ButtonVariant.primary:
        backgroundColor = theme.colorScheme.primary;
        foregroundColor = theme.colorScheme.onPrimary;
        break;
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(
          extensions?.shapes.cornerRadius ?? 12.0,
        ),
      ),
      child: Text(
        label,
        style: extensions?.typography.caption.copyWith(color: foregroundColor),
      ),
    );
  }
}
