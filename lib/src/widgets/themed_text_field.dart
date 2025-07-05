import 'package:flutter/material.dart';

import '../core/theme_extensions.dart';

class ThemedTextField extends StatelessWidget {
  final String? label;
  final TextEditingController? controller;
  final String? hintText;

  const ThemedTextField({
    super.key,
    this.label,
    this.controller,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final extensions = theme.extension<ThemeExtensions>();

    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        hintText: hintText,
        labelStyle: extensions?.typography.body,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            extensions?.shapes.cornerRadius ?? 8.0,
          ),
          borderSide: BorderSide(
            color: theme.colorScheme.onSurface.withOpacity(0.2),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            extensions?.shapes.cornerRadius ?? 8.0,
          ),
          borderSide: BorderSide(color: theme.colorScheme.primary),
        ),
        filled: true,
        fillColor: theme.colorScheme.surface,
      ),
      style: extensions?.typography.body,
    );
  }
}
