import 'package:flutter/material.dart';
import 'package:todo_getx_demo/config/color_constants.dart';
import 'package:todo_getx_demo/utils/size_utils.dart';

class TodoListTile extends StatelessWidget {
  final String todoTitle;

  TodoListTile({this.todoTitle});
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.toWidth, vertical: 20.toHeight),
      width: SizeConfig().screenWidth,
      height: 150.toHeight,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: LinearGradient(colors: ColorConstants.addTodoColor)),
      child: ListTile(
        title: Text(todoTitle),
        subtitle: Text('This is my first todo'),
        trailing: IconButton(
            icon: Icon(
              Icons.delete_outline,
              color: ColorConstants.deleteIconColor,
            ),
            onPressed: () {}),
      ),
    );
  }
}
