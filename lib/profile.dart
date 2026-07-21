import 'package:flutter/material.dart';
import 'package:datahack_3/Notification.dart';
import 'models/task_organiser.dart';
import 'settings.dart';

class Profile extends StatefulWidget {
  Profile({super.key, required this.loginUser});

  final TaskOrganiser loginUser;

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/Login.png"),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.fromLTRB(20, 35, 20, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      print("suii");
                    },
                    icon: CircleAvatar(
                      foregroundImage: AssetImage(
                        widget.loginUser.profileImage!,
                      ),
                      radius: 25,
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                height: 15.29,
                                width: 15.29,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.green,
                                ),
                              ),
                              SizedBox(width: 5,),
                              Text(
                                "Availlable",
                                style: TextStyle(
                                  fontSize: 17.48,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Notification2(
                                      loginUser: widget.loginUser,
                                    ),
                                  ),
                                );
                              },
                              icon: Icon(
                                Icons.notifications_none_sharp,
                                size: 36,
                                color: Colors.black87,
                              ),
                            ),

                            IconButton(
                              onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Settings(
                                    loginUser: widget.loginUser,
                                  ),
                                ),
                              ),
                              icon: Icon(
                                Icons.settings_outlined,
                                size: 36,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 19.92),
              Text(
                "Profile",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 25),
              Container(
                height: 279,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.loginUser.profileImage!),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              SizedBox(height: 25),
              Text(
                widget.loginUser.name.nom + " " + widget.loginUser.name.prenom,
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
              ),
              Text(
                "Organiser",
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
              SizedBox(height: 18),
              Container(
                width: 106,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
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
                      style: TextStyle(
                        fontSize: 17.48,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Divider(color: Colors.grey, thickness: 0.5),
              SizedBox(height: 15),
              Text(
                "Contact",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  Icon(Icons.email_outlined, size: 22, color: Colors.grey),
                  SizedBox(width: 8),
                  Flexible(
                    child: Text(
                      widget.loginUser.email,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 7),
              Row(
                children: [
                  Icon(Icons.phone_outlined, size: 22, color: Colors.grey),
                  SizedBox(width: 8),
                  Flexible(
                    child: Text(
                      widget.loginUser.phoneNumber,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
