import 'package:flutter/material.dart';
import 'package:frist_project/counter_screen.dart';
import 'package:frist_project/signup_screen.dart';





void main()
{


  runApp(MyApp());
}

// Stateless
// Stateful

// class MyApp

class MyApp extends StatelessWidget
{
  // constructor
  // build

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
    );
  }
}
