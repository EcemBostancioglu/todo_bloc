import 'package:flutter/material.dart';

class AddToDo extends StatelessWidget {
  const AddToDo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title:const Text('Add To-Do'),
      shape:const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
            Radius.circular(20)),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(),
          Padding(
            padding:const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: (){
            Navigator.pop(context);
            },
              child:const Text('Add'),
            ))],
      ),
    );
  }
}
