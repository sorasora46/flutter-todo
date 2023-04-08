import 'package:flutter/material.dart';
import 'package:flutter_todo/components/custom_drawer.dart';
import 'package:flutter_todo/components/custom_appbar.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(),
        endDrawer: const CustomDrawer(),
        body: TextButton(
          child: const Text('Settings Page'),
          onPressed: () {
            Navigator.pop(context);
          },
        ));
  }
}
