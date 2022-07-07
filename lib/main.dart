// ignore_for_file: prefer_const_constructors_in_immutables, camel_case_types, prefer_const_constructors
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.blue.shade400,
          appBar: AppBar(
            // ignore: prefer_const_constructors
            title: Center(
              child: Text(
                'ASK YOUR QUESTION ',
              ),
            ),
          ),
          body: questionApp()),
    ),
  );
}
// ignore: non_constant_identifier_names

class questionApp extends StatefulWidget {
  questionApp({Key? key}) : super(key: key);

  @override
  State<questionApp> createState() => _questionAppState();
}

class _questionAppState extends State<questionApp> {
  int ans = 1;
  void answ() {
    setState(
      () {
        ans = Random().nextInt(5) + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton(
              onPressed: () {
                answ();
              },
              child: Image.asset('images/ball$ans.png'),
            ),
          ),
        ],
      ),
    );
  }
}
