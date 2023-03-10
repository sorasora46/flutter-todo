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
            const DrawerHeader(
                child: Text('FirstName LastName',
                    style: TextStyle(fontWeight: FontWeight.bold))),
            TextButton(
              onPressed: () {},
              child: ListTile(
                title: Row(
                  children: [
                    Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: const Icon(Icons.person)),
                    const Text('Profile',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: ListTile(
                title: Row(
                  children: [
                    Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: const Icon(Icons.settings)),
                    const Text('Settings',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: ListTile(
                title: Row(
                  children: [
                    Container(
                        margin: const EdgeInsets.only(right: 10),
                        child:
                            const Icon(Icons.logout, color: Colors.redAccent)),
                    const Text(
                      'Logout',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.redAccent),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text('Hello there!'),
      ),
    );
  }
}
