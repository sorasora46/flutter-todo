import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_todo/pages/home_page.dart';
import './pages/welcome_page.dart';
import './constants/colors.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(primary: accentColor, background: backgroundColor),
          fontFamily: 'TiltNeon',
        ),
        title: "To-Do Application",
        // home: const WelcomePage(),
        home: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return const HomePage();
            }
            return const WelcomePage();
          },
        ));
  }
}
