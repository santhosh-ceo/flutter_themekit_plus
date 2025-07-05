import 'package:flutter/material.dart';

import '../core/theme_extensions.dart';

class ThemedBottomSheet {
  static void show(BuildContext context, {required Widget content}) {
    final theme = Theme.of(context);
    final extensions = theme.extension<ThemeExtensions>();

    showModalBottomSheet(
      context: context,
      backgroundColor: theme.colorScheme.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(extensions?.shapes.cornerRadius ?? 16.0),
        ),
      ),
      builder:
          (context) => Padding(
            padding: extensions?.padding.cardPadding ?? EdgeInsets.all(16.0),
            child: content,
          ),
    );
  }
}
