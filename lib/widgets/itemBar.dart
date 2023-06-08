import 'dart:js';
import 'package:flutter/material.dart';

class TabArea extends StatefulWidget {
  const TabArea({super.key});

  @override
  State<TabArea> createState() => _TabAreaState();
}

class _TabAreaState extends State<TabArea> {
  List<String> items = [
    'All',
    'Important',
    'Lecture Notes',
    'ToDo Lists',
    'Shopping Lists'
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(
              onTap: () {
                setState(() {
                  _currentIndex = index;
                });
              },
              child: Container(
                padding: const EdgeInsets.all(15),
                alignment: Alignment.center,
                decoration: _currentIndex == index
                    ? const BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      )
                    : BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                        border: Border.all(
                          color: Colors.grey.withOpacity(0.5),
                        ),
                      ),
                child: Column(
                  children: [
                    Text(
                      items[index],
                      style: _currentIndex == index
                          ? const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold)
                          : const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
