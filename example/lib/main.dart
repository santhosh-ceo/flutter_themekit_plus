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
      builder:
          (context, theme) => MaterialApp(
            theme: theme.light,
            darkTheme: theme.dark,
            themeMode: theme.mode,
            home: HomeScreen(),
          ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ThemedAppBar(
        title: 'ThemeKit Plus',
        actions: [
          ThemedPopupMenu<String>(
            items: [
              PopupMenuItem(value: 'material', child: Text('Material')),
              PopupMenuItem(
                value: 'glassmorphism',
                child: Text('Glassmorphism'),
              ),
              PopupMenuItem(value: 'cyberpunk', child: Text('Cyberpunk')),
            ],
            child: ThemedIcon(icon: Icons.menu),
          ),
        ],
      ),
      drawer: ThemedDrawer(
        items: [
          ThemedListTile(title: 'Home', onTap: () {}),
          ThemedListTile(title: 'Settings', onTap: () {}),
        ],
      ),
      bottomNavigationBar: ThemedBottomNavBar(
        items: [
          BottomNavigationBarItem(
            icon: ThemedIcon(icon: Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ThemedIcon(icon: Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: 0,
        onTap: (index) {},
      ),
      floatingActionButton: ThemedFAB(
        onPressed:
            () => ThemeKitController.of(context).switchTheme('cyberpunk'),
        icon: ThemedIcon(icon: Icons.add),
        label: 'Switch Theme',
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          shrinkWrap: true,
          children: [
            ThemedText(
              'Welcome to ThemeKit Plus!',
              style: ThemedTextStyle.heading1,
            ),
            ThemedDivider(),
            ThemedButton(
              label: 'Show Alert',
              onPressed:
                  () => ThemedAlertDialog.show(
                    context,
                    title: 'Alert',
                    content: 'This is an alert dialog!',
                    confirmText: 'OK',
                    cancelText: 'Cancel',
                  ),
            ),
            ThemedButton(
              label: 'Show Bottom Sheet',
              variant: ButtonVariant.success,
              onPressed:
                  () => ThemedBottomSheet.show(
                    context,
                    content: ThemedText(
                      'This is a bottom sheet!',
                      style: ThemedTextStyle.body,
                    ),
                  ),
            ),
            ThemedButton(
              label: 'Show Snackbar',
              variant: ButtonVariant.danger,
              onPressed:
                  () => ThemedSnackbar.show(
                    context,
                    'Error occurred!',
                    variant: ButtonVariant.danger,
                  ),
            ),
            ThemedButton(
              label: 'Show Toast',
              variant: ButtonVariant.info,
              onPressed:
                  () => ThemedToast.show(
                    context,
                    'Info message!',
                    variant: ButtonVariant.info,
                  ),
            ),
            ThemedCard(
              child: ThemedText('This is a card', style: ThemedTextStyle.body),
            ),
            ThemedContainer(
              variant: ButtonVariant.secondary,
              child: ThemedText(
                'This is a container',
                style: ThemedTextStyle.body,
              ),
            ),
            ThemedBadge(label: 'New', variant: ButtonVariant.success),
            ThemedTag(label: 'Tag', variant: ButtonVariant.danger),
            ThemedChip(label: 'Chip', onTap: () {}),
            ThemedTextField(label: 'Name', hintText: 'Enter your name'),

            ThemedCheckbox(value: true, onChanged: (value) {}),
            ThemedRadio(value: 1, groupValue: 1, onChanged: (value) {}),
            ThemedTooltip(
              message: 'Tooltip example',
              child: ThemedIcon(icon: Icons.info),
            ),
            ThemedMenu(
              items: [
                ThemedListTile(title: 'Menu Item 1', onTap: () {}),
                ThemedListTile(title: 'Menu Item 2', onTap: () {}),
              ],
            ),
            ThemedLoader(),
          ],
        ),
      ),
    );
  }
}
