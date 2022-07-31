import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:todo_bloc/model/todo.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {

  List<Todo> todos=[];

  TodoBloc() : super(TodoInitial()) {
    on<TodoEvent>((event, emit) {
    });

    on<AddTodoEvent>((event,emit){
      todos.add(event.todo);
      emit(AddTodoState(todoList: todos));
    });
  }
}
