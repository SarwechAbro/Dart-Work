import 'dart:io';

void main() {
  Task task = Task();

  var choice;
  while (true) {
    print("====Task Menu====");
    print("1 Add Task ");
    print("2 Show Tasks ");
    print("3 Update Task ");
    print("4 Delete Task ");
    print("0 Exit ");
    print("Enter Your Choice: ");
    choice = int.parse(stdin.readLineSync()!);
    if (choice == 1) {
      task.createtask();
    } else if (choice == 2) {
      task.showtasks();
    } else if (choice == 3) {
      task.updatetask();
      task.showtasks();
    } else if (choice == 4) {
      task.deletetask();
      task.showtasks();
    } else if (choice == 0) {
      print("Thank You");
      exit(1);
    } else {
      print("Please Enter Correct Choice: ");
    }
  }
}

class Task {
  List<dynamic> tasks = [];
  int? id;
  String? title;
  bool? completed;

  Task({this.id, this.title, this.completed = false});

  void createtask() {
    print("Enter Your Task Id: ");
    this.id = int.parse(stdin.readLineSync()!);
    print("Enter Your Task Title: ");
    this.title = stdin.readLineSync();
    tasks.add([this.id, this.title]);
  }

  void showtasks() {
    for (int i = 0; i < tasks.length; i++) {
      print(tasks[i]);
    }
  }

  void updatetask() {
    print("Enter Task Id to update: ");
    int tid = int.parse(stdin.readLineSync()!);
    print("Enter New Task Id: ");
    this.id = int.parse(stdin.readLineSync()!);
    print("Enter New Task Title: ");
    this.title = stdin.readLineSync();
    final task = tasks.firstWhere((task) => task.first == tid);
    task[0] = this.id;
    task[1] = this.title;
    print("Task Updates Succesfully");
  }

  void deletetask() {
    print("Enter Task Id to Delete: ");
    int tid = int.parse(stdin.readLineSync()!);
    tasks.removeWhere((task) => task.first == tid);
    print("Task Deleted Succesfully");
  }
}
