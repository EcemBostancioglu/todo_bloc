part of 'todo_bloc.dart';

@immutable
abstract class TodoEvent {}

class GetTodoEvent extends TodoEvent{}

class AddTodoEvent extends TodoEvent{
  final Todo todo;

  AddTodoEvent({required this.todo});
}