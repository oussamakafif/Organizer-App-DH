import 'package:datahack_3/Home.dart';
import 'package:datahack_3/alltasks.dart';
import 'package:flutter/material.dart';
import 'log_in.dart';
import 'Task_Details.dart';
import 'alltasks.dart';
import 'AllTasks2.dart';
import 'Notification.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       title: "Flutter Demo",
        home: Login(),
    );
  }
}
