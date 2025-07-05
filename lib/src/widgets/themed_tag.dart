import 'package:flutter/material.dart';
import 'package:flutter_themekit_plus/src/widgets/themed_button.dart';

import '../core/theme_extensions.dart';

class ThemedTag extends StatelessWidget {
  final String label;
  final ButtonVariant variant;

  const ThemedTag({
    super.key,
    required this.label,
    this.variant = ButtonVariant.primary,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final extensions = theme.extension<ThemeExtensions>();

    Color backgroundColor;
    Color foregroundColor;

    switch (variant) {
      case ButtonVariant.success:
        backgroundColor = Colors.green.withOpacity(0.2);
        foregroundColor = Colors.green;
        break;
      case ButtonVariant.danger:
        backgroundColor = Colors.red.withOpacity(0.2);
        foregroundColor = Colors.red;
        break;
      case ButtonVariant.info:
        backgroundColor = Colors.blue.withOpacity(0.2);
        foregroundColor = Colors.blue;
        break;
      case ButtonVariant.secondary:
        backgroundColor = theme.colorScheme.secondary.withOpacity(0.2);
        foregroundColor = theme.colorScheme.secondary;
        break;
      case ButtonVariant.primary:
        backgroundColor = theme.colorScheme.primary.withOpacity(0.2);
        foregroundColor = theme.colorScheme.primary;
        break;
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(
          extensions?.shapes.cornerRadius ?? 12.0,
        ),
        border: Border.all(color: foregroundColor),
      ),
      child: Text(
        label,
        style: extensions?.typography.caption.copyWith(color: foregroundColor),
      ),
    );
  }
}
