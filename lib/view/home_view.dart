import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_bloc/bloc/todo_bloc.dart';
import 'package:todo_bloc/constants/constants.dart';
import 'package:todo_bloc/widgets/add_todo.dart';
import 'package:todo_bloc/widgets/todo_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     extendBodyBehindAppBar: true,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink.shade600,
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) => const AddToDo());
        },
        elevation: 0,
        child: Icon(Icons.add,
            size: 30.sm),
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200.h),
        child: AppBar(
          backgroundColor: Colors.transparent,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/good_vibes.jpg'),
                fit: BoxFit.cover
              )
            ),
          ),
        ),
      ),
      body: SafeArea(
        child:
            TodoBuilder()),
    );
  }
}
