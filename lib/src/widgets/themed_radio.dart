import 'package:flutter/material.dart';

import '../core/theme_extensions.dart';

class ThemedRadio<T> extends StatelessWidget {
  final T value;
  final T groupValue;
  final ValueChanged<T?>? onChanged;

  const ThemedRadio({
    Key? key,
    required this.value,
    required this.groupValue,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final extensions = theme.extension<ThemeExtensions>();

    return Radio<T>(
      value: value,
      groupValue: groupValue,
      onChanged: onChanged,
      activeColor: theme.colorScheme.primary,
      fillColor: MaterialStateProperty.all(theme.colorScheme.primary),
    );
  }
}
