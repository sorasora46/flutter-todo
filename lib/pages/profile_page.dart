import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Profile Page'),
        ),
        body: TextButton(
          child: const Text('Profile Page'),
          onPressed: () {
            Navigator.pop(context);
          },
        ));
  }
}
