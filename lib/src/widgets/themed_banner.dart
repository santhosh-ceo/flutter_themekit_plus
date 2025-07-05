import 'package:flutter/material.dart';
import 'package:flutter_themekit_plus/src/widgets/themed_button.dart';

import '../core/theme_extensions.dart';

class ThemedBanner extends StatelessWidget {
  final String message;
  final ButtonVariant variant;

  const ThemedBanner({
    super.key,
    required this.message,
    this.variant = ButtonVariant.primary,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final extensions = theme.extension<ThemeExtensions>();

    return MaterialBanner(
      content: Text(message, style: extensions?.typography.body),
      backgroundColor:
          variant == ButtonVariant.success
              ? Colors.green
              : variant == ButtonVariant.danger
              ? Colors.red
              : theme.colorScheme.primary,
      contentTextStyle: extensions?.typography.body.copyWith(
        color: theme.colorScheme.onPrimary,
      ),
      actions: [
        TextButton(
          onPressed:
              () => ScaffoldMessenger.of(context).hideCurrentMaterialBanner(),
          child: Text(
            'Dismiss',
            style: extensions?.typography.button.copyWith(
              color: theme.colorScheme.onPrimary,
            ),
          ),
        ),
      ],
    );
  }
}
