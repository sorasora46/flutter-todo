import 'package:flutter/material.dart';
import 'package:flutter_todo/components/custom_appbar.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(),
        body: TextButton(
          child: const Text('Profile Page'),
          onPressed: () {
            Navigator.pop(context);
          },
        ));
  }
}
