import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_bloc/bloc/todo_bloc.dart';
import 'package:todo_bloc/view/home_view.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => TodoBloc(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: (context, child) =>
            MaterialApp(
              debugShowCheckedModeBanner: false,
              home: HomeView(),
            ));
  }
}
