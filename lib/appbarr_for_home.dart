import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:datahack_3/Notification.dart';

import 'package:datahack_3/models/task_organiser.dart';

class AppbarrForHome extends StatelessWidget {
  const AppbarrForHome({super.key, required this.loginUser});

  final TaskOrganiser loginUser;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          onPressed: () {
            print("suii");
          },
          icon: CircleAvatar(
            foregroundImage: AssetImage(loginUser.profileImage!),
            radius: 25,
          ),
        ),
        Container(
          width: 158.29,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 106,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      height: 15.29,
                      width: 15.29,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
                      ),
                    ),
                    Text(
                      "Availlable",
                      style: TextStyle(fontSize: 17.48, color: Colors.black),
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Notification2(loginUser: loginUser),
                    ),
                  );
                },
                icon: Icon(
                  Icons.notifications,
                  size: 36,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
