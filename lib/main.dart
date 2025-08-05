// main.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_toggle_app/home_page.dart';
import 'package:theme_toggle_app/theme_notifier.dart';


void main() {
  // Wrap the app with ChangeNotifierProvider to provide ThemeNotifier
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Access ThemeNotifier using Provider
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Theme Toggle App',
      // Set theme mode based on ThemeNotifier state
      themeMode: themeNotifier.themeMode,
      // Light theme configuration
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.black87),
        ),
      ),
      // Dark theme configuration
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.grey[900],
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white70),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}