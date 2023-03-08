import 'package:flutter/material.dart';
import './pages/welcome_page.dart';
import './constants/colors.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(primary: accentColor, background: backgroundColor),
        fontFamily: 'TiltNeon',
      ),
      title: "To-Do Application",
      home: const WelcomePage(),
    );
  }
}
