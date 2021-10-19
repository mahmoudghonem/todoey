import 'package:flutter/material.dart';

class TaskTail extends StatelessWidget {
  const TaskTail(
      {Key? key,
      this.isChecked,
      required this.taskTitle,
      this.checkboxCallback,
      this.deleteCallback})
      : super(key: key);

  final bool? isChecked;
  final String? taskTitle;
  final void Function(bool?)? checkboxCallback;
  final void Function()? deleteCallback;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: InkWell(
          onTap: deleteCallback,
          child: const Icon(
            Icons.delete,
            color: Colors.red,
          )),
      title: Text(
        taskTitle!,
        style: TextStyle(
            decoration: isChecked! ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
