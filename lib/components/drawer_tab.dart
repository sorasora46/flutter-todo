import 'package:flutter/material.dart';

// use for put customize tab menu
class DrawerTab extends StatelessWidget {
  const DrawerTab({super.key, this.leader, this.end, required this.text});

  final Icon? leader;
  final Widget? end;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: leader!,
          ),
          Text(text,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.black)),
        ],
      ),
    );
  }
}
