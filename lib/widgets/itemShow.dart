import 'package:flutter/material.dart';

class TodoListsPage extends StatefulWidget {
  const TodoListsPage({super.key});

  @override
  State<TodoListsPage> createState() => _TodoListsPageState();
}

class _TodoListsPageState extends State<TodoListsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 210,
                width: 200,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    color: Color.fromRGBO(217, 232, 252, 1)),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Title:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Description:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 210,
                width: 200,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    color: Color.fromRGBO(255, 216, 244, 1)),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Title:'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Description:')
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
