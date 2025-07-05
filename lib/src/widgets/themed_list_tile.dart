import 'package:flutter/material.dart';

import '../core/theme_extensions.dart';

class ThemedListTile extends StatelessWidget {
  final String title;
  final String? subtitle;
  final Widget? leading;
  final Widget? trailing;
  final VoidCallback? onTap;

  const ThemedListTile({
    Key? key,
    required this.title,
    this.subtitle,
    this.leading,
    this.trailing,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final extensions = theme.extension<ThemeExtensions>();

    return ListTile(
      title: Text(title, style: extensions?.typography.body),
      subtitle:
          subtitle != null
              ? Text(subtitle!, style: extensions?.typography.caption)
              : null,
      leading: leading,
      trailing: trailing,
      onTap: onTap,
      tileColor: theme.colorScheme.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          extensions?.shapes.cornerRadius ?? 8.0,
        ),
      ),
    );
  }
}
