import 'package:flutter/material.dart';

import '../core/theme_extensions.dart';

class ThemedLoader extends StatelessWidget {
  const ThemedLoader({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final extensions = theme.extension<ThemeExtensions>();

    return CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(theme.colorScheme.primary),
      strokeWidth: 4.0,
    );
  }
}
