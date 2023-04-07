import 'package:flutter/material.dart';
import 'package:flutter_todo/components/custom_drawer.dart';
import 'package:flutter_todo/constants/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  final formController = TextEditingController();
  final List<Task> items = [];

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
      endDrawer: const CustomDrawer(),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextFormField(
              key: _formKey,
              controller: formController,
              onFieldSubmitted: (value) {
                setState(() {
                  if (value == "") return;
                  formController.text = "";
                  items.add(Task(isChecked: false, task: value));
                });
              },
              decoration: const InputDecoration(
                  icon: Icon(Icons.edit_square),
                  label: Text('Task'),
                  hintText: 'Enter your task',
                  hintStyle: TextStyle(color: Colors.redAccent)),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    Task task = items[index];
                    return ListTile(
                      leading: Checkbox(
                        value: task.isChecked,
                        fillColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                          if (states.contains(MaterialState.disabled)) {
                            return Colors.redAccent.withOpacity(.32);
                          }
                          return Colors.redAccent;
                        }),
                        onChanged: (bool? value) {
                          setState(() {
                            task.isChecked = !task.isChecked;
                          });
                        },
                      ),
                      trailing: IconButton(
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.redAccent,
                        ),
                        onPressed: () {
                          setState(() {
                            items.removeAt(index);
                          });
                        },
                      ),
                      title: Text(task.task,
                          style: TextStyle(
                              decoration: task.isChecked
                                  ? TextDecoration.lineThrough
                                  : TextDecoration.none)),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

class Task {
  Task({required this.task, required this.isChecked});

  final String task;
  bool isChecked;
}
