# Changelog


## [0.0.2] - 2025-07-05

### Added
- Initial release of `flutter_themekit_plus`, a comprehensive Flutter theming system.
- **Core Features**:
    - Auto theme switching with support for system theme matching, time-based (day/night) switching, and user-triggered theme changes, persisted via `SharedPreferences`.
    - Curated theme packs: Material (Material 3), Glassmorphism, Pastel, Neumorphism, Cyberpunk, Dracula, Minimal, and Solarized, all with accessible color palettes (WCAG 2.1 compliant).
    - Theme extensions for modular customization of typography, shapes, animations, and padding.
    - One-line setup using the `ThemeKit` widget for easy integration with `MaterialApp`.
- **Widgets**:
    - Prebuilt themed widgets: `ThemedButton`, `ThemedAppBar`, `ThemedBottomNavBar`, `ThemedBottomSheet`, `ThemedAlertDialog`, `ThemedScaffoldMessenger`, `ThemedCard`, `ThemedText`, `ThemedDialog`, `ThemedDrawer`, `ThemedTabs`, `ThemedListTile`, `ThemedContainer`, `ThemedRadio`, `ThemedCheckbox`, `ThemedIcon`, `ThemedBadge`, `ThemedTextField`, `ThemedExpansionPanel`, `ThemedBanner`, `ThemedToast`, `ThemedSnackbar`, `ThemedLoader`, `ThemedDivider`, `ThemedChip`, `ThemedTag`, `ThemedPopupMenu`, `ThemedTooltip`, `ThemedMenu`, `ThemedFAB`.
    - All widgets support context-aware variants (`primary`, `secondary`, `success`, `danger`, `info`) and respect the active theme’s `ColorScheme`, typography, shapes, animations, and padding.
