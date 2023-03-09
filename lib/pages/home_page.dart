import 'package:flutter/material.dart';
import 'package:flutter_todo/constants/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        foregroundColor: textColor,
        elevation: 0,
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(child: Text('FirstName LastName')),
            TextButton(
              onPressed: () {},
              child: const ListTile(
                title: Text('Profile'),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const ListTile(
                title: Text('Settings'),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const ListTile(
                title: Text('Logout'),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back'),
        ),
      ),
    );
  }
}
