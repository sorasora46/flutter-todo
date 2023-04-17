import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_todo/pages/profile_page.dart';
import 'package:flutter_todo/pages/settings_page.dart';
import 'package:flutter_todo/pages/welcome_page.dart';

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
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Profile()));
            },
            child: ListTile(
              title: Row(
                children: [
                  Container(
                      margin: const EdgeInsets.only(right: 10),
                      child: const Icon(Icons.person)),
                  const Text('Profile',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black))
                ],
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Settings()));
            },
            child: ListTile(
              title: Row(
                children: [
                  Container(
                      margin: const EdgeInsets.only(right: 10),
                      child: const Icon(Icons.settings)),
                  const Text('Settings',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black)),
                ],
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const WelcomePage()));
            },
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
