part of 'todo_bloc.dart';

@immutable
abstract class TodoState {}

class TodoInitial extends TodoState {}

class AddTodoState extends TodoState{
  final List<Todo> todoList;

  AddTodoState({required this.todoList});
}


