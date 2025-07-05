import 'package:flutter/material.dart';

import '../core/theme_extensions.dart';

class ThemedBottomNavBar extends StatelessWidget {
  final List<BottomNavigationBarItem> items;
  final int currentIndex;
  final ValueChanged<int>? onTap;

  const ThemedBottomNavBar({
    Key? key,
    required this.items,
    required this.currentIndex,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final extensions = theme.extension<ThemeExtensions>();

    return BottomNavigationBar(
      items: items,
      currentIndex: currentIndex,
      selectedItemColor: theme.colorScheme.primary,
      unselectedItemColor: theme.colorScheme.onSurface.withOpacity(0.6),
      backgroundColor: theme.colorScheme.surface,
      onTap: onTap,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedLabelStyle: extensions?.typography.caption,
      unselectedLabelStyle: extensions?.typography.caption?.copyWith(
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
