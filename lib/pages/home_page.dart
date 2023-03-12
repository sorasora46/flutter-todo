import 'package:flutter/material.dart';
import 'package:flutter_todo/constants/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.items});

  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: backgroundColor,
          foregroundColor: textColor,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: const [
              Icon(Icons.check_circle_outline),
              Text('To-Do Application')
            ],
          )),
      endDrawer: Drawer(
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
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.edit_square),
                label: Text('Task'),
                hintText: 'Enter your task',
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: items.length,
                  prototypeItem: ListTile(
                    title: Text(items.first),
                  ),
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(items[index]),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
