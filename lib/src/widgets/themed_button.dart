import 'package:flutter/material.dart';

import '../core/theme_extensions.dart';

enum ButtonVariant { primary, secondary, success, danger, info }

class ThemedButton extends StatelessWidget {
  final String label;
  final ButtonVariant variant;
  final VoidCallback? onPressed;

  const ThemedButton({
    Key? key,
    required this.label,
    this.variant = ButtonVariant.primary,
    this.onPressed,
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
      default:
        backgroundColor = theme.colorScheme.primary;
        foregroundColor = theme.colorScheme.onPrimary;
        break;
    }

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            extensions?.shapes.cornerRadius ?? 4.0,
          ),
        ),
        padding: extensions?.padding.buttonPadding,
        animationDuration: extensions?.animations.duration,
      ),
      onPressed: onPressed,
      child: Text(label, style: extensions?.typography.button),
    );
  }
}
