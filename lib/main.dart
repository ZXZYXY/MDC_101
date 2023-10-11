import 'package:flutter/material.dart';
import 'package:flutter_application_mdc101/home.dart';
import 'package:flutter_application_mdc101/login.dart';
import 'package:flutter_application_mdc101/color.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData _kShrineTheme = _buildShrineTheme();
    return MaterialApp(theme: _kShrineTheme, initialRoute: '/login', routes: {
      '/login': (context) => const LoginPage(),
      '/home': (context) => const HomePage(),
    });
  }

  ThemeData _buildShrineTheme() {
    final ThemeData base = ThemeData.light();
    return base.copyWith(
      colorScheme: base.colorScheme.copyWith(
        primary: kShrinePink100,
        onPrimary: kShrineBrown900,
        secondary: kShrineBrown900,
        error: kShrineErrorRed,
      ),
      // TODO: Add the text themes (103)
      // TODO: Add the icon themes (103)
      // TODO: Decorate the inputs (103)
    );
  }
}
