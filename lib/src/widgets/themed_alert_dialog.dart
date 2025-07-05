import 'package:flutter/material.dart';
import 'package:flutter_themekit_plus/src/widgets/themed_button.dart';

import '../core/theme_extensions.dart';

class ThemedAlertDialog {
  static void show(
    BuildContext context, {
    required String title,
    required String content,
    String? confirmText,
    String? cancelText,
    VoidCallback? onConfirm,
    VoidCallback? onCancel,
  }) {
    final theme = Theme.of(context);
    final extensions = theme.extension<ThemeExtensions>();

    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            backgroundColor: theme.colorScheme.surface,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                extensions?.shapes.cornerRadius ?? 8.0,
              ),
            ),
            title: Text(title, style: extensions?.typography.heading2),
            content: Text(content, style: extensions?.typography.body),
            actions: [
              if (cancelText != null)
                TextButton(
                  onPressed: onCancel ?? () => Navigator.pop(context),
                  child: Text(cancelText, style: extensions?.typography.button),
                ),
              if (confirmText != null)
                ThemedButton(
                  label: confirmText,
                  variant: ButtonVariant.primary,
                  onPressed: onConfirm ?? () => Navigator.pop(context),
                ),
            ],
          ),
    );
  }
}
