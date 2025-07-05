import 'package:flutter/material.dart';

import '../core/theme_extensions.dart';

class ThemedCheckbox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?>? onChanged;

  const ThemedCheckbox({Key? key, required this.value, this.onChanged})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final extensions = theme.extension<ThemeExtensions>();

    return Checkbox(
      value: value,
      onChanged: onChanged,
      activeColor: theme.colorScheme.primary,
      checkColor: theme.colorScheme.onPrimary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          extensions?.shapes.cornerRadius ?? 4.0,
        ),
      ),
    );
  }
}
