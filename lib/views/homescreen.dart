import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_getx_demo/config/color_constants.dart';
import 'package:todo_getx_demo/controllers/todo_controller.dart';
import 'package:todo_getx_demo/views/widgets/todolist_tile.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: TodoController(),
        builder: (todoController) {
          return Scaffold(
              appBar: AppBar(
                backgroundColor: ColorConstants.appBarColor,
                title: Text(
                  'Todo App List',
                  style: TextStyle(color: ColorConstants.primaryColor),
                ),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  todoController.addTodo();
                },
                backgroundColor: ColorConstants.appBarColor,
                child: Icon(Icons.add),
              ),
              body: ListView.builder(
                  itemCount: todoController.todoItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    return TodoListTile(todoTitle: todoController.todoItems[index]);
                  }));
        });
  }
}
