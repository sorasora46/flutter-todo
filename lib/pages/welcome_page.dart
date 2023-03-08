import 'package:flutter/material.dart';
import 'package:flutter_todo/constants/colors.dart';
import 'package:flutter_todo/pages/home_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: backgroundColor,
            foregroundColor: textColor,
            centerTitle: true,
            elevation: 0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(Icons.check_circle_outline),
                Text('To-Do Application')
              ],
            )),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Manage your team & everything with To-Do!',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 35),
                ),
                SizedBox(
                  height: 250,
                  child: Expanded(
                    child: Image.asset('assets/images/home_image.png'),
                  ),
                ),
                const Text(
                  'When you\'re overwhelmed by the amount of work you have on your plante, stop and rethink',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 20),
                  child: SizedBox(
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()));
                      },
                      child: const Text('Let\'s Start',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
