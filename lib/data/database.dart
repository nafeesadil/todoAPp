
import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];
  final _myBox = Hive.box('mybox');

  void createInitialData(){
    toDoList = [
      ["this is the first task",false],
      ["this is the second task",false],
      ["this is the forth task",false]
    ];

  }

  void updateData(){
  _myBox.put("TODOLIST", toDoList);
  }

  void loadData() {
  toDoList = _myBox.get("TODOLIST");
  }



}