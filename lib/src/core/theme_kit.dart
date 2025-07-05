import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'theme_controller.dart';

class ThemeKit extends StatelessWidget {
  final String initialTheme;
  final Map<String, ThemeKitData> themes;
  final Widget Function(BuildContext, ThemeKitController) builder;

  const ThemeKit({
    super.key,
    required this.initialTheme,
    required this.themes,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:
          (_) => ThemeKitController(initialTheme: initialTheme, themes: themes),
      child: Consumer<ThemeKitController>(
        builder: (context, controller, _) => builder(context, controller),
      ),
    );
  }
}
