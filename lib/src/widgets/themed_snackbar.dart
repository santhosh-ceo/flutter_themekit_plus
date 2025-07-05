import 'package:flutter/material.dart';
import 'package:flutter_themekit_plus/src/widgets/themed_button.dart';

import '../core/theme_extensions.dart';

class ThemedSnackbar {
  static void show(
    BuildContext context,
    String message, {
    ButtonVariant variant = ButtonVariant.primary,
  }) {
    final theme = Theme.of(context);
    final extensions = theme.extension<ThemeExtensions>();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: extensions?.typography.body.copyWith(
            color: theme.colorScheme.onSurface,
          ),
        ),
        backgroundColor:
            variant == ButtonVariant.success
                ? Colors.green
                : variant == ButtonVariant.danger
                ? Colors.red
                : theme.colorScheme.surface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            extensions?.shapes.cornerRadius ?? 4.0,
          ),
        ),
        behavior: SnackBarBehavior.floating,
        duration: extensions?.animations.duration ?? Duration(seconds: 3),
      ),
    );
  }
}
