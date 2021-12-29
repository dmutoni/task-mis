import 'package:flutter/material.dart';
import 'package:task_mis_app/constants/colors.dart';

class Task {
  IconData? iconData;
  String? title;
  Color? bgColor;
  Color? iconColor;
  Color? btnColor;
  num? left;
  num? done;
  List<Map<String, dynamic>>? desc;
  bool isLast;

  static List<Task> generateTasks() {
    return [
      Task(
          iconData: Icons.person_rounded,
          title: 'Personal',
          bgColor: Colors.yellow.shade50,
          iconColor: Colors.yellow.shade300,
          btnColor: Colors.yellow.shade100,
          left: 3,
          done: 1,
          desc: [
            {
              'time': '9:00 am',
              'title': 'Go for a walk with dog',
              'slot': '9:00 - 10:00 am',
              'tlColor': kRedDark,
              'bgColor': kRedLight
            },
            {
              'time': '10:00 am',
              'title': 'Shot on Dribble',
              'slot': '10:00 - 12:00 am',
              'tlColor': kBlueDark,
              'bgColor': kBlueLight
            },
            {
              'time': '11:00 am',
              'title': '',
              'slot': '',
              'tlColor': kBlueDark,
            },
            {
              'time': '12:00 am',
              'title': '',
              'slot': '',
              'tlColor': Colors.grey.withOpacity(0.3),
            },
            {
              'time': '1:00 pm',
              'title': 'Call with client',
              'slot': '1:00 - 2:00 pm',
              'tlColor': kYellowDark,
              'bgColor': kYellowLight
            },
            {
              'time': '2:00 pm',
              'title': '',
              'slot': '',
              'tlColor': Colors.grey.withOpacity(0.3),
            },
            {
              'time': '3:00 pm',
              'title': '',
              'slot': '',
              'tlColor': Colors.grey.withOpacity(0.3),
            },
          ]),
      Task(
        iconData: Icons.cases_rounded,
        title: 'Work',
        bgColor: Colors.red.shade50,
        iconColor: Colors.red.shade300,
        btnColor: Colors.red.shade100,
        left: 0,
        done: 0,
      ),
      Task(
        iconData: Icons.favorite_rounded,
        title: 'Health',
        bgColor: Colors.blue.shade50,
        iconColor: Colors.blue.shade300,
        btnColor: Colors.blue.shade100,
        left: 0,
        done: 0,
      ),
      Task(
        iconData: Icons.person_rounded,
        title: 'Personal',
        bgColor: Colors.yellow.shade50,
        iconColor: Colors.yellow.shade300,
        btnColor: Colors.yellow.shade100,
        left: 3,
        done: 1,
      ),
      Task(
        iconData: Icons.cases_rounded,
        title: 'Work',
        bgColor: Colors.red.shade50,
        iconColor: Colors.red.shade300,
        btnColor: Colors.red.shade100,
        left: 0,
        done: 0,
      ),
      Task(
        iconData: Icons.favorite_rounded,
        title: 'Health',
        bgColor: Colors.blue.shade50,
        iconColor: Colors.blue.shade300,
        btnColor: Colors.blue.shade100,
        left: 0,
        done: 0,
      ),
      Task(isLast: true)
    ];
  }

  Task(
      {this.iconData,
      this.title,
      this.bgColor,
      this.iconColor,
      this.btnColor,
      this.left,
      this.done,
      this.desc,
      this.isLast = false});
}
