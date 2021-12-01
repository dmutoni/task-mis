import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_mis_app/models/task.dart';

class Tasks extends StatelessWidget {
  const Tasks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tasksList = Task.generateTasks();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: GridView.builder(
          itemCount: tasksList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
          itemBuilder: (context, index) => tasksList[index].isLast
              ? _buildAddTask()
              : _buildTask(context, tasksList[index])),
    );
  }

  Widget _buildAddTask() {
    return const Text('Add Task');
  }

  Widget _buildTask(BuildContext context, Task task) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: task.bgColor, borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(task.iconData, color: task.iconColor, size: 30,),
          const SizedBox(height: 30,),
          Text(task.title!, style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
          )),
          const SizedBox(height: 20,),
          Row(
            children: [
              _buildTaskStatus(task.btnColor!, task.iconColor!, '${task.left} left'),
               const SizedBox(width: 5),
              _buildTaskStatus(Colors.white, task.iconColor!, '${task.done} left')
            ],
          )
        ],
      ),
    );
  }
}

Widget _buildTaskStatus(Color bgColor, Color txtColor, String text) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    decoration: BoxDecoration(
      color: bgColor,
      borderRadius: BorderRadius.circular(20)
    ),
    child: Text(text,
    style: TextStyle( color: txtColor)),
  );
}
