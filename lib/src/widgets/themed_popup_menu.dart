import 'package:flutter/material.dart';

import '../core/theme_extensions.dart';

class ThemedPopupMenu<T> extends StatelessWidget {
  final List<PopupMenuItem<T>> items;
  final Widget child;
  final ValueChanged<T>? onSelected;

  const ThemedPopupMenu({
    super.key,
    required this.items,
    required this.child,
    this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final extensions = theme.extension<ThemeExtensions>();

    return PopupMenuButton<T>(
      itemBuilder: (context) => items,
      onSelected: onSelected,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          extensions?.shapes.cornerRadius ?? 8.0,
        ),
      ),
      color: theme.colorScheme.surface,
      child: child,
    );
  }
}
