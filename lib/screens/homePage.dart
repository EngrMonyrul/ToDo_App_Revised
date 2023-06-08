import 'package:flutter/material.dart';
import 'package:todo_app/screens/planningPage.dart';
import 'package:todo_app/widgets/itemBar.dart';
import 'package:todo_app/widgets/itemShow.dart';
import 'package:todo_app/widgets/searchBar.dart';
import 'package:todo_app/widgets/titleBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double bodyWidth = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromRGBO(31, 41, 55, 1),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const PlanningArea()));
          },
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 20,
          ),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              TitleBar(),
              const SizedBox(
                height: 20,
              ),
              SearchBar(size: bodyWidth),
              const SizedBox(
                height: 20,
              ),
              const TabArea(),
              const SizedBox(
                height: 20,
              ),
              const TodoListsPage(),
            ],
          ),
        ),
      ),
    );
  }
}
