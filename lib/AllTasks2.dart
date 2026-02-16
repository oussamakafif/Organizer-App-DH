import 'package:datahack_3/Home.dart';
import 'package:datahack_3/appbarr.dart';
import 'package:datahack_3/daycolour.dart';
import 'package:flutter/material.dart';
import 'Indiv task.dart';

class Alltasks2 extends StatelessWidget {
  const Alltasks2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbarr(
        icon2: Icons.filter_alt,
        title: "All Tasks",
        destination: Home(),
      ),
      body: Container(
        padding: EdgeInsetsGeometry.fromLTRB(18, 24, 18, 8),
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 175,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Timeline",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF262626),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                Container(
                                  height: 80,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          Daycolour(),
                                          SizedBox(width: 8),
                                          Daycolour(
                                            couleur: Colors.yellow,
                                            textcolour: Colors.white,
                                            day: "Day 02",
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 8),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          Daycolour(
                                            couleur: Colors.white,
                                            textcolour: Colors.black,
                                            day: "Day 03",
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Statuts",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF262626),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                Container(
                                  height: 80,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: <Widget>[
                                          Daycolour(day: "All",),
                                          SizedBox(width: 8),

                                          Daycolour(
                                            couleur: Colors.yellow,
                                            textcolour: Colors.white,
                                            day: "In Progress",
                                            widdth: 90,
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 8),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: <Widget>[
                                          Daycolour(
                                            couleur: Colors.white,
                                            textcolour: Colors.black,
                                            day: "Done",
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        GestureDetector(onTap: () {
                          print("Filter button pressed");
                        }, child: Container(
                          height: 32,
                          width: 84,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.all(Radius.circular(18))
                          ),
                          child: Center(
                            child: Text("Apply",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                            ),
                          )
                        )
                        )
                      ],
                    )
                    
                  ],
                ),
              ),
              SizedBox(height: 24,),
              Divider(
                color: Color(0xFFD8D8D8),
                thickness: 1,
              ),
              SizedBox(height: 26,),
              Indivtask(QrC: true,isDone: false,),
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
              SizedBox(height: 12),
              Indivtask(),
            ],
          ),
        ),
      ),
    );
  }
}
