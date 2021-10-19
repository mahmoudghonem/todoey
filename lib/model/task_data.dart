import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey/model/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'buy milk'),
    Task(name: 'buy eggs'),
  ];

  int get tasksCount => _tasks.length;

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void toggleDone(index) {
    _tasks[index].toggleDone();
    notifyListeners();
  }

  void addTask(title) {
    final task = Task(name: title);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(title, index) {
    var task = _tasks.elementAt(index);
    task.name = title;
    notifyListeners();
  }

  //  void updateTask(Task task) {
  //   _tasks.remove(task);
  //   _tasks.add(task);
  //   notifyListeners();
  // }
  void deleteTask(index) {
    _tasks.removeAt(index);
    notifyListeners();
  }
}
