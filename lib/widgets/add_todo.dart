import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_bloc/bloc/todo_bloc.dart';
import 'package:todo_bloc/constants/constants.dart';
import 'package:todo_bloc/model/todo.dart';

class AddToDo extends StatefulWidget {
  const AddToDo({Key? key}) : super(key: key);

  @override
  State<AddToDo> createState() => _AddToDoState();
}

class _AddToDoState extends State<AddToDo> {

  dynamic _formKey;
  final TextEditingController titleController=TextEditingController();
  final TextEditingController descriptionController=TextEditingController();
  final bool _validate=false;

  @override
  void initState() {
    _formKey=GlobalKey<FormState>();
    super.initState();
  }

  @override
  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(addToDo),
      shape:const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
            Radius.circular(20)),
      ),
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: title,
                labelText: title,
                errorText: _validate ? warning : null
              ),
              controller:titleController,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: description,
                  labelText: description,
              ),
              controller:descriptionController,
            ),
            Padding(
              padding: EdgeInsets.only(top:20.w),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Colors.pink.shade600),
                ),
                onPressed: (){
                  if(_formKey.currentState.validate()){
                    BlocProvider.of<TodoBloc>(context).add(
                        AddTodoEvent(todo: Todo(
                        title: titleController.text,
                        description: descriptionController.text)));
                    Navigator.pop(context);
                  }

              },
                child:Text(add),
              ))],
        ),
      ),
    );
  }
}
