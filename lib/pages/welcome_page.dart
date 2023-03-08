import 'package:flutter/material.dart';
import 'package:flutter_todo/constants/colors.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

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
        body: Container(
          margin: const EdgeInsets.all(10),
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    'Manage your team & everything with To-Do!',
                    style: TextStyle(fontSize: 40),
                  )),
              Container(
                  margin: const EdgeInsets.all(5),
                  child: Expanded(
                    child: Image.asset('assets/images/home_image.png'),
                  )),
              Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    'When you\'re overwhelmed by the amount of work you have on your plante, stop and rethink',
                    style: TextStyle(fontSize: 20),
                  )),
              Container(
                margin: const EdgeInsets.all(10),
                child: SizedBox(
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Let\'s Start'),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
