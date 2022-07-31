import 'package:flutter/material.dart';

class AddToDo extends StatefulWidget {
  const AddToDo({Key? key}) : super(key: key);

  @override
  State<AddToDo> createState() => _AddToDoState();
}

class _AddToDoState extends State<AddToDo> {

  dynamic _formKey;
  final TextEditingController titleController=TextEditingController();
  final TextEditingController descriptionController=TextEditingController();
  bool _validate=false;

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
      title:const Text('Add To-Do'),
      shape:const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
            Radius.circular(20)),
      ),
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Title',
                labelText: 'Title',
                errorText: _validate ? 'Title can\'t be empty' : null
              ),
              controller:titleController,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Description',
                  labelText: 'Description',
              ),
              controller:descriptionController,
            ),
            Padding(
              padding:const EdgeInsets.only(left:160,top: 20),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.pink.shade600),
                ),
                onPressed: (){
                  Navigator.pop(context);
              },
                child:const Text('Add'),
              ))],
        ),
      ),
    );
  }
}
