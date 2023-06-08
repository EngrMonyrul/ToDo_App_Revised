import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget SearchBar({required double size}) {
  return Container(
    //padding: EdgeInsets.all(10),
    margin: const EdgeInsets.symmetric(horizontal: 30),
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.grey.withOpacity(0.5),
      ),
      borderRadius: const BorderRadius.all(
        Radius.circular(10),
      ),
    ),
    child: TextField(
      style: const TextStyle(
        color: Colors.black,
        fontSize: 20
      ),
      cursorColor: Colors.black,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(20),
        prefixIcon: Icon(
          Icons.search,
          color: Colors.grey.withOpacity(0.5),
        ),
        hintText: 'Search for notes',
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        hintStyle: TextStyle(
          color: Colors.grey.withOpacity(0.5),
        ),
      ),
    ),
  );
}
