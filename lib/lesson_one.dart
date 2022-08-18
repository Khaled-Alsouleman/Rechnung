import 'dart:ui';

import 'package:flutter/material.dart';

class lessonOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        outlinedButtonTheme: OutlinedButtonThemeData(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.teal[200]))),
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: TextButton(
            onPressed: () {
              print('appBar Button works');
            },
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.white),
              backgroundColor: MaterialStateProperty.all(Colors.transparent),
              textStyle: MaterialStateProperty.all(
                const TextStyle(
                  fontSize: 35,
                  fontFamily: 'Helvetica',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            child: const Text('USELY'),
          ),
          actions: [],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                onPressed: () {
                  print("It's works!!");
                  myFunction();
                },
                child: const Text('Button'),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              side: BorderSide(
                  color: Colors.deepOrangeAccent,
                  width: 1,
                  style: BorderStyle.solid)),
          splashColor: Colors.red,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }

  var count = 0;

  void myFunction() {
    count++;
  }
}
