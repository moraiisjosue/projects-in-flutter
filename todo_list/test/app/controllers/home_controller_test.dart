import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:todo_list/app/controllers/home_controller.dart';
import 'package:todo_list/app/models/todo_model.dart';
import 'package:todo_list/app/repositories/todo_repository.dart';

class TodoRepositoryMock extends Mock implements TodoRepository {}

void main() {
  final repository = TodoRepositoryMock();
  final controller = HomeController(repository);
  test('deve preencher variavel todos', () async {
    when(() => repository.fecthTodos()).thenAnswer((_) async => [TodoModel()]);

    expect(controller.state, HomeState.start);
    await controller.start();
    expect(controller.state, HomeState.sucess);
    expect(controller.todos.isNotEmpty, true);
  });
}
