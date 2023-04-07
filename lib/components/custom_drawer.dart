import 'package:flutter/material.dart';
import 'package:flutter_todo/pages/profile_page.dart';
import 'package:flutter_todo/pages/settings_page.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
      ),
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
                  TextButton(
                    child: const Text('Profile',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Profile()));
                    },
                  )
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
                  TextButton(
                    child: const Text('Settings',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Settings()));
                    },
                  ),
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
                      child: const Icon(Icons.logout, color: Colors.redAccent)),
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
    );
  }
}
