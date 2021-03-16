import 'package:get/get_state_manager/get_state_manager.dart';

class TodoController extends GetxController {
  List<String> todoItems = [];

  void addTodo() {
    int index = todoItems.length;
    todoItems.add('Item' + index.toString());
    update();
  }
}
