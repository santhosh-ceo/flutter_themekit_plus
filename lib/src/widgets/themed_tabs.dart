import 'package:flutter/material.dart';

import '../core/theme_extensions.dart';

class ThemedTabs extends StatelessWidget {
  final List<String> tabs;
  final List<Widget> tabViews;
  final int selectedIndex;
  final ValueChanged<int>? onTabChanged;

  const ThemedTabs({
    Key? key,
    required this.tabs,
    required this.tabViews,
    this.selectedIndex = 0,
    this.onTabChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final extensions = theme.extension<ThemeExtensions>();

    return DefaultTabController(
      length: tabs.length,
      initialIndex: selectedIndex,
      child: Column(
        children: [
          TabBar(
            tabs: tabs.map((tab) => Tab(text: tab)).toList(),
            labelColor: theme.colorScheme.primary,
            unselectedLabelColor: theme.colorScheme.onSurface.withOpacity(0.6),
            labelStyle: extensions?.typography.button,
            indicatorColor: theme.colorScheme.primary,
            indicator: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: theme.colorScheme.primary,
                  width: 2.0,
                ),
              ),
            ),
          ),
          Expanded(child: TabBarView(children: tabViews)),
        ],
      ),
    );
  }
}
