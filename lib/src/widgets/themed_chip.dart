import 'package:flutter/material.dart';
import 'package:flutter_themekit_plus/src/widgets/themed_button.dart';

import '../core/theme_extensions.dart';

class ThemedChip extends StatelessWidget {
  final String label;
  final ButtonVariant variant;
  final VoidCallback? onTap;

  const ThemedChip({
    Key? key,
    required this.label,
    this.variant = ButtonVariant.primary,
    this.onTap,
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

    return ActionChip(
      label: Text(
        label,
        style: extensions?.typography.caption.copyWith(color: foregroundColor),
      ),
      backgroundColor: backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          extensions?.shapes.cornerRadius ?? 8.0,
        ),
      ),
      onPressed: onTap,
    );
  }
}
