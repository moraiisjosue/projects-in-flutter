import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

Future main() async {
  print(stringToInt('d'));
}

int stringToInt(String text) {
  int value;
  try {
    value = int.parse(text);
  } catch (e) {
    throw Exception('O texto passado ($text) não é um número');
  }

  return value;
}





  
  //final todo = await fetch();
  //print(todo.title); //Acessando








  //programação assincrona
  //var future = Future.delayed(Duration(seconds: 2)); declarão da future
  //future.then((value) => print('novo 4'));
//}

/*Future<void> print4() async {
  await Future.delayed(Duration(seconds: 2));
  print('4');
}*/







//requisição web API e converter para o tipo MAP
/* Future<Todo> fetch() async {
  var url = 'https://jsonplaceholder.typicode.com/todos/1';
  var response = await http.get(Uri.parse(url));
  var json = jsonDecode(response.body);
  var todo = Todo.fromJson(json);
  return todo;
}

class Todo {
  final String title;
  final int id;
  final int userId;
  final bool completed;

  Todo(
      {required this.title,
      required this.id,
      required this.userId,
      required this.completed});

  factory Todo.fromJson(Map json) {
    return Todo(
      title: json['title'],
      id: json['id'],
      completed: json['completed'],
      userId: json['userId'],
    );
  }

  Map toJson() {
    return {
      'title': title,
      'id': id,
      'completed': completed,
      'userId': userId,
    };
  }
} */
