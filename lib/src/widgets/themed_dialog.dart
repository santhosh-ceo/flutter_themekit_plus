import 'package:flutter/material.dart';
import 'package:flutter_themekit_plus/src/widgets/themed_button.dart';

import '../core/theme_extensions.dart';

class ThemedDialog {
  static void show(
    BuildContext context, {
    required String title,
    required Widget content,
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
          (context) => Dialog(
            backgroundColor: theme.colorScheme.surface,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                extensions?.shapes.cornerRadius ?? 8.0,
              ),
            ),
            child: Padding(
              padding: extensions?.padding.cardPadding ?? EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(title, style: extensions?.typography.heading2),
                  const SizedBox(height: 16),
                  content,
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      if (cancelText != null)
                        TextButton(
                          onPressed: onCancel ?? () => Navigator.pop(context),
                          child: Text(
                            cancelText,
                            style: extensions?.typography.button,
                          ),
                        ),
                      if (confirmText != null)
                        ThemedButton(
                          label: confirmText,
                          variant: ButtonVariant.primary,
                          onPressed: onConfirm ?? () => Navigator.pop(context),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ),
    );
  }
}
