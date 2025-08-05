import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_toggle_app/theme_notifier.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Access ThemeNotifier for toggling theme
    final themeNotifier = Provider.of<ThemeNotifier>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Toggle App'),
        // Add action icon to toggle theme
        actions: [
          IconButton(
            icon: Icon(
              themeNotifier.themeMode == ThemeMode.light
                  ? Icons.dark_mode
                  : Icons.light_mode,
            ),
            tooltip: 'Toggle Theme',
            onPressed: () {
              themeNotifier.toggleTheme();
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display current theme status
            Text(
              'Current Theme: ${themeNotifier.themeMode == ThemeMode.light ? "Light" : "Dark"}',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
