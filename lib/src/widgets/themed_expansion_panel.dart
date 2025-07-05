import 'package:flutter/material.dart';

import '../core/theme_extensions.dart';

class ThemedExpansionPanel extends StatelessWidget {
  final List<ExpansionPanelItem> items;

  const ThemedExpansionPanel({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final extensions = theme.extension<ThemeExtensions>();

    return ExpansionPanelList(
      expansionCallback: (index, isExpanded) {
        items[index].isExpanded = !isExpanded;
        (context as Element).markNeedsBuild();
      },
      children:
          items.map((item) {
            return ExpansionPanel(
              headerBuilder:
                  (context, isExpanded) => ListTile(
                    title: Text(
                      item.header,
                      style: extensions?.typography.body,
                    ),
                  ),
              body: Padding(
                padding:
                    extensions?.padding.cardPadding ?? EdgeInsets.all(16.0),
                child: item.body,
              ),
              isExpanded: item.isExpanded,
              canTapOnHeader: true,
            );
          }).toList(),
      dividerColor: theme.colorScheme.onSurface.withOpacity(0.2),
      elevation: 2,
    );
  }
}

class ExpansionPanelItem {
  final String header;
  final Widget body;
  bool isExpanded;

  ExpansionPanelItem({
    required this.header,
    required this.body,
    this.isExpanded = false,
  });
}
