part of 'todo_bloc.dart';

@immutable
abstract class TodoState {}

class TodoInitial extends TodoState {}

class AddTodoState extends TodoState{}

class GetTodoState extends TodoState{
  final List<Todo> todoList;

  GetTodoState({required this.todoList});


}


