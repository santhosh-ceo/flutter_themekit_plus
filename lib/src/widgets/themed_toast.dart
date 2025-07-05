import 'package:flutter/material.dart';
import 'package:flutter_themekit_plus/src/widgets/themed_button.dart';

import '../core/theme_extensions.dart';

class ThemedToast {
  static void show(
    BuildContext context,
    String message, {
    ButtonVariant variant = ButtonVariant.primary,
  }) {
    final theme = Theme.of(context);
    final extensions = theme.extension<ThemeExtensions>();

    final overlay = Overlay.of(context);
    final entry = OverlayEntry(
      builder:
          (context) => Positioned(
            bottom: 50.0,
            left: 20.0,
            right: 20.0,
            child: Material(
              color: Colors.transparent,
              child: Container(
                padding:
                    extensions?.padding.buttonPadding ??
                    EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                decoration: BoxDecoration(
                  color:
                      variant == ButtonVariant.success
                          ? Colors.green
                          : variant == ButtonVariant.danger
                          ? Colors.red
                          : theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    extensions?.shapes.cornerRadius ?? 4.0,
                  ),
                ),
                child: Text(
                  message,
                  style: extensions?.typography.body.copyWith(
                    color: theme.colorScheme.onPrimary,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
    );

    overlay.insert(entry);
    Future.delayed(
      extensions?.animations.duration ?? Duration(seconds: 2),
      () => entry.remove(),
    );
  }
}
