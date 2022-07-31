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

    on<GetTodoEvent>((event, emit) {
      emit(GetTodoState(todoList: todos));
    });

    on<AddTodoEvent>((event,emit){
    });
  }
}
