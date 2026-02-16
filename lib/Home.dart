import 'package:datahack_3/Notification.dart';
import 'package:datahack_3/Task_Details.dart';
import 'package:datahack_3/alltasks.dart';
import 'package:datahack_3/sup_info.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsetsGeometry.fromLTRB(20, 35, 20, 0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    print("suii");
                  },
                  icon: CircleAvatar(
                    foregroundImage: AssetImage('assets/Profilepicture.png'),
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
                              style: TextStyle(
                                fontSize: 17.48,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      IconButton(onPressed: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Notification2()),
                        );
                      }, icon: Icon(
                        Icons.notifications,
                        size: 36,
                        color: Colors.black87,
                      ),)
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 23.92),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: [
                      Text(
                        'Welcome ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Oussama',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: 24),
                  Container(
                    height: 132,
                    padding: EdgeInsetsGeometry.fromLTRB(20, 20, 20, 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                      color: Color(0xFF003E7C),
                    ),
                    child: Row(
                      children: <Widget>[
                        Image(
                          image: AssetImage('assets/Logo - Datahack.png'),
                          height: 96,
                          width: 96,
                        ),
                        SizedBox(width: 25),
                        Center(
                          child: Text(
                            'DataHack',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 36,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 23),
            Container(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'My Tasks',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Alltasks()),
                          );
                        },
                        child: Text("View All",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),

                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Container(
                    padding: EdgeInsetsGeometry.fromLTRB(20, 20, 20, 20),
                    height: 299,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 1,
                          spreadRadius: 0.1,
                        ),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Current Task",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Check In",
                              style: TextStyle(
                                fontSize: 32,
                                color: Colors.blue,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "14:00 - 17:00",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Icon(
                              Icons.location_on_outlined,
                              size: 30,
                              color: Colors.black,
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Location",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Supervisor',
                              style: TextStyle(
                                color: Color(0xFF999999),
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                SupInfo(name: "Rayane Benkradidja"),
                                SupInfo(name: "Boussebata Issam"),
                              ],
                            ),
                            SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                SupInfo(name: "Rayane Benkradidja"),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> TaskDetails() ),
                )
                ,child:Container(
                    height: 90,
                    width: 500,
                    decoration: BoxDecoration(
                      color: Color(0xFFB2E3FF),
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                    ),
                    padding: EdgeInsetsGeometry.fromLTRB(17.5, 12, 17.5, 12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Task name",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Icon(Icons.access_time, size: 20, weight: 100),
                                SizedBox(width: 3),
                                Text(
                                  "11:00 - 12:30",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Icon(
                                  Icons.location_on_outlined,
                                  size: 22,
                                  weight: 100,
                                ),
                                SizedBox(width: 2),
                                Text(
                                  "Les nouveaux salles 25",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
              ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
