import 'package:flutter/material.dart';
import 'package:flutter_themekit_plus/src/widgets/themed_button.dart';

import '../core/theme_extensions.dart';

class ThemedCard extends StatelessWidget {
  final Widget child;
  final ButtonVariant variant;

  const ThemedCard({
    Key? key,
    required this.child,
    this.variant = ButtonVariant.primary,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final extensions = theme.extension<ThemeExtensions>();

    return Card(
      color:
          variant == ButtonVariant.success
              ? Colors.green.withOpacity(0.1)
              : variant == ButtonVariant.danger
              ? Colors.red.withOpacity(0.1)
              : theme.colorScheme.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          extensions?.shapes.cornerRadius ?? 8.0,
        ),
      ),
      elevation: 4.0,
      child: Padding(
        padding: extensions?.padding.cardPadding ?? EdgeInsets.all(16.0),
        child: child,
      ),
    );
  }
}
