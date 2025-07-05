# flutter_themekit_plus

A comprehensive Flutter theming system that provides a plug-and-play solution for creating consistent, dynamic, and accessible user interfaces. It supports light/dark/system modes, curated color palettes, auto theme switching, prebuilt themed widgets, context-aware theming, and modular theme extensions.

[![Pub Version](https://img.shields.io/pub/v/flutter_themekit_plus)](https://pub.dev/packages/flutter_themekit_plus)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

---

## 🎯 Features

- **🌗 Auto Theme Switching**: Supports system theme matching, time-based (day/night) switching, and user-triggered theme changes with persistence via `SharedPreferences`.
- **🎨 Curated Theme Packs**: Includes Material 3, Glassmorphism, Pastel, Neumorphism, Cyberpunk, Dracula, Minimal, and Solarized themes with accessible color palettes (WCAG 2.1 compliant).
- **🧱 Prebuilt Themed Widgets**: A complete set of widgets (Button, AppBar, BottomNavBar, BottomSheet, AlertDialog, ScaffoldMessenger, Card, Text, Dialog, Drawer, Tabs, ListTile, Container, Radio, Checkbox, Icon, Badge, TextField, ExpansionPanel, Banner, Toast, Snackbar, Loader, Divider, Chip, Tag, PopupMenu, Tooltip, Menu, FAB) that respect the active theme and context-aware variants (primary, secondary, success, danger, info).
- **🧩 Theme Extensions**: Modular customization for typography, shapes, animations, and padding.
- **📱 Device Theme Matching**: Supports Material You (dynamic colors) and iOS dynamic theming.
- **📦 One-line Setup**: Easy integration with a single `ThemeKit` widget.

---

## 🚀 Getting Started

### Installation

Add the package to your `pubspec.yaml`:

```yaml
dependencies:
  flutter_themekit_plus: ^1.0.0
  provider: ^6.0.0
  shared_preferences: ^2.0.0
```
### Basic Setup
Wrap your MaterialApp with the ThemeKit widget to enable theming:
```
import 'package:flutter/material.dart';
import 'package:flutter_themekit_plus/flutter_themekit_plus.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeKit(
      initialTheme: 'material',
      themes: ThemePacks.all,
      builder: (context, theme) => MaterialApp(
        theme: theme.light,
        darkTheme: theme.dark,
        themeMode: theme.mode,
        home: HomeScreen(),
      ),
    );
  }
}
```
### Switching Themes:
Switch themes dynamically using the `ThemeKitController`:
```
ThemeKitController.of(context).switchTheme('cyberpunk');
```
Toggle between light, dark, or system mode:
```
ThemeKitController.of(context).setThemeMode(ThemeMode.dark);
```
### Widgets and Usage:
All widgets are themed and support context-aware variants (primary, secondary, success, danger, info). They respect the active theme’s ColorScheme, typography, shapes, animations, and padding.

### Theme Packs

The package includes eight curated theme packs, each with light and dark variants:Material: Modern Material 3 design with dynamic colors (Material You support).
`Glassmorphism`: Translucent surfaces with blur effects.
`Pastel`: Soft, soothing colors for a clean aesthetic.
`Neumorphism`: 3D-like soft shadows and gradients.
`Cyberpunk`: Vibrant, neon colors for a futuristic look.
`Dracula`: High-contrast, developer-friendly palette.
`Minimal`: Clean, monochrome design with minimal styling.
`Solarized`: Balanced, eye-friendly colors for professional apps.

Access all themes via `ThemePacks.all` or individually (e.g., `ThemePacks.material`).

### Theme Extensions
Customize typography, shapes, animations, and padding:TypographyConfig: Defines styles for heading1, heading2, body, caption, and button.
ShapeConfig: Controls corner radius for widgets.
AnimationConfig: Specifies curves and durations for transitions.
PaddingConfig: Standardizes padding for buttons, cards, etc.

Example:
```
ThemeExtensions(
  typography: TypographyConfig(
    heading1: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
  ),
  shapes: ShapeConfig(cornerRadius: 12.0),
  animations: AnimationConfig(curve: Curves.easeInOut, duration: Duration(milliseconds: 300)),
  padding: PaddingConfig(buttonPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8)),
)
```

### Contributing
Contributions are welcome! 
Please:Fork the repository.
Create a feature branch (`git checkout -b feature/new-feature`).
Commit your changes (`git commit -m 'Add new feature'`).
Push to the branch (`git push origin feature/new-feature`).
Open a Pull Request.

#### License
 MIT License. 
 See LICENSE for details. 




Built with ❤️ by Santhosh Adiga U


