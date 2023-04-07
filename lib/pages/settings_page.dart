import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Settings Page')),
        body: TextButton(
          child: const Text('Settings Page'),
          onPressed: () {
            Navigator.pop(context);
          },
        ));
  }
}
