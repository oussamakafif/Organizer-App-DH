import 'package:datahack_3/AllTasks2.dart';
import 'package:datahack_3/Home.dart';
import 'package:datahack_3/Indiv%20task.dart';
import 'package:datahack_3/appbarr.dart';
import 'package:datahack_3/models/task_organiser.dart';
import 'package:flutter/material.dart';
import 'Home.dart';

class Alltasks extends StatelessWidget {
  final TaskOrganiser loginUser;
  const Alltasks({super.key, required this.loginUser});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbarr(
        icon2: Icons.filter_alt_outlined,
        title: "All Tasks",
        destination: Home(loginUser: loginUser),
      ),
      body: Container(
        padding: EdgeInsetsGeometry.fromLTRB(20, 21, 20, 0),
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Indivtask(QrC: false,isDone: true,),
              SizedBox(height: 12),
              Indivtask(isDone: true,QrC: true,),
              SizedBox(height: 12),
              Indivtask(),
              SizedBox(height: 12),
              Indivtask(),
              SizedBox(height: 12),
              Indivtask(),
              SizedBox(height: 12),
              Indivtask(),
              SizedBox(height: 12),
              Indivtask(),
              SizedBox(height: 12),
              Indivtask(),
              SizedBox(height: 12),
              Indivtask(),
              SizedBox(height: 12),
              Indivtask(),
            ],
          ),
        ),
      ),
    );
  }
}
