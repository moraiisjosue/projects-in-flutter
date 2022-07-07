import 'package:dio/dio.dart';

import '../models/todo_model.dart';

class TodoRepository {
  late Dio dio;
  final String url = 'https://jsonplaceholder.typicode.com/todos';

  TodoRepository([Dio? client]) {
    dio = client ?? Dio();
  }

  Future<List<TodoModel>> fecthTodos() async {
    final response = await dio.get(url); // faz a requisiçao http da api
    final list = response.data
        as List; // cria uma lista com o resultado da requisição acessado pelo metodo data

    List<TodoModel> todos =
        []; // cria uma variavel do tipo List com 'TodoModel'

    for (var json in list) {
      // faz um loop em todos os itens da lista 'list'
      final todo =
          TodoModel.fromJson(json); // converte os dados do item para json
      todos.add(todo); // adiciona o resultado convertido na lista de 'todos'
    }

    return todos;
  }
}
