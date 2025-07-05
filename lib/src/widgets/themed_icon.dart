import 'package:flutter/material.dart';
import 'package:flutter_themekit_plus/src/widgets/themed_button.dart';

import '../core/theme_extensions.dart';

class ThemedIcon extends StatelessWidget {
  final IconData icon;
  final ButtonVariant variant;
  final double? size;

  const ThemedIcon({
    Key? key,
    required this.icon,
    this.variant = ButtonVariant.primary,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final extensions = theme.extension<ThemeExtensions>();

    Color color;
    switch (variant) {
      case ButtonVariant.success:
        color = Colors.green;
        break;
      case ButtonVariant.danger:
        color = Colors.red;
        break;
      case ButtonVariant.info:
        color = Colors.blue;
        break;
      case ButtonVariant.secondary:
        color = theme.colorScheme.secondary;
        break;
      case ButtonVariant.primary:
        color = theme.colorScheme.primary;
        break;
    }

    return Icon(
      icon,
      color: color,
      size: size ?? extensions?.typography.body.fontSize,
    );
  }
}
