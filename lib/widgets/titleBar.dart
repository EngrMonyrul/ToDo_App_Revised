import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Text TitleBar() {
  return const Text.rich(TextSpan(children: [
    TextSpan(
        text: 'THI',
        style: TextStyle(
            color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold)),
    TextSpan(
        text: 'N',
        style: TextStyle(
            color: Colors.greenAccent,
            fontSize: 30,
            fontWeight: FontWeight.bold)),
    TextSpan(
        text: 'K',
        style: TextStyle(
            color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold)),
  ]));
}
