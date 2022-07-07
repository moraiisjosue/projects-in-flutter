import 'package:flutter/material.dart';
import 'package:todo_list/app/controllers/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  _sucess() {
    return ListView.builder(
      itemCount: controller.todos.length,
      itemBuilder: (context, index) {
        var todo = controller.todos[index];
        return ListTile(
          leading: Checkbox(
            value: todo.completed,
            onChanged: (bool? value) {},
          ),
          title: Text(todo.title),
        );
      },
    );
  }

  _erro() {
    return Center(
        child: ElevatedButton(
      onPressed: () {
        controller.start();
      },
      child: const Text('Tentar Novamente'),
    ));
  }

  _loading() {
    return const Center(child: CircularProgressIndicator());
  }

  _star() {
    return Container();
  }

  stateManagement(HomeState state) {
    switch (state) {
      case HomeState.error:
        return _erro();
      case HomeState.loading:
        return _loading();
      case HomeState.start:
        return _star();
      case HomeState.sucess:
        return _sucess();
      default:
        return _erro();
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.start();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Todo\'s'),
        actions: [
          IconButton(
              icon: Icon(Icons.refresh_outlined),
              onPressed: () {
                controller.start();
              })
        ],
      ),
      body: AnimatedBuilder(
        animation: controller.state,
        builder: (context, child) {
          return stateManagement(controller.state.value);
        },
      ),
    );
  }
}
