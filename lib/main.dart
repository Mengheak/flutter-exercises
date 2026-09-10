import 'package:flutter/material.dart';
import 'package:ui_design_lab/design/app_theme.dart';
import 'package:ui_design_lab/screens/color_roles_screen.dart';
import 'package:ui_design_lab/screens/dashboard_screen.dart';
import 'package:ui_design_lab/screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDark = false;

  void toggleBrightness() {
    setState(() {
      isDark = !isDark;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
      // home: ColorRolesScreen(
      //   onToggleBrightness: toggleBrightness,
      // ),
      home: DashboardScreen(),
    );
  }
}