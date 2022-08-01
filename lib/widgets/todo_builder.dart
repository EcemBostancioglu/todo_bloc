import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_bloc/bloc/todo_bloc.dart';

class TodoBuilder extends StatelessWidget {
  const TodoBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodoBloc, TodoState>(
      builder: (context, state) {
        if(state is AddTodoState){
          return ListView.builder(
            itemCount: state.todoList.length,
            itemBuilder: (context,index){
              var todo=state.todoList[index];
              return ListTile(
                title: Padding(
                  padding: EdgeInsets.all(4.w),
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: [
                      Text(todo.title),
                      Text(todo.description),
                    ],
                  ),
                ),
              );
            },);
        }
        return Text('selam');
      },
    );
  }
}

