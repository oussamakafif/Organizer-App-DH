import 'package:flutter/material.dart';
import 'appbarr.dart';
import 'appbarr_for_home.dart';
import 'models/task_organiser.dart';


class Organizers extends StatelessWidget {
  const Organizers({super.key, required this.loginUser});
  final TaskOrganiser loginUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(

        children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/Login.png"),
              fit: BoxFit.cover,
            ),
          ),
          padding: EdgeInsetsGeometry.fromLTRB(20, 35, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
               AppbarrForHome(loginUser: this.loginUser),
               SizedBox(height: 23.92),
                Text(
                  "Organisers",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              SizedBox(height: 23.92),



             ],
          ),
        ),
    ],
      ),

    );
  }
}
