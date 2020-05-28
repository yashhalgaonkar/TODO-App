import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/model/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Eat Eggs'),
    Task(name: 'Eat Biryani'),
    Task(name: 'Eat Butter Chicken'),
    Task(name: 'Eat Gulabjamun')
  ];

  //going to compute the value of the lenght everytime someone calles this method
  int get taskCount {
    //getter function
    return tasks.length;
  }

  void addTask(String taskName) {
    tasks.add(Task(name: taskName));
    print('add tak: called');
    // most important
    notifyListeners();
  }

  void toggleDone(int index) {
    tasks[index].isDone = !tasks[index].isDone;
    notifyListeners();
  }

  void deleteTask(int index) {
    tasks.removeAt(index);
    notifyListeners();
  }
}
