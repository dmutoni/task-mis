import 'package:flutter/material.dart';
class Task {
  IconData? iconData;
  String? title;
  Color? bgColor;
  Color? iconColor;
  Color? btnColor;
  num? left;
  num? done;
  bool isLast;

  Task({this.iconData, this.title, this.bgColor, this.iconColor, this.btnColor,
      this.left, this.done, this.isLast = false});
  static List<Task> generateTasks() {
    return [
      Task(iconData: Icons.person_rounded,
        title: 'Personal',
        bgColor: Colors.yellow.shade50,
        iconColor: Colors.yellow.shade300,
        btnColor: Colors.yellow.shade100,
        left: 3,
        done: 1,
      ),
      Task(iconData: Icons.cases_rounded,
        title: 'Work',
        bgColor: Colors.red.shade50,
        iconColor: Colors.red.shade300,
        btnColor: Colors.red.shade100,
        left: 0,
        done: 0,
      ),
      Task(iconData: Icons.favorite_rounded,
        title: 'Health',
        bgColor: Colors.blue.shade50 ,
        iconColor: Colors.blue.shade300,
        btnColor: Colors.blue.shade100,
        left: 0,
        done: 0,
      ),
      Task(isLast: true)
    ];
  }
}