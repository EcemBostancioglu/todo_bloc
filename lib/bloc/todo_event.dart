part of 'todo_bloc.dart';

@immutable
abstract class TodoEvent {}

class AddTodoEvent extends TodoEvent{
  final Todo todo;

  AddTodoEvent({required this.todo});
}