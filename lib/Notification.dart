import 'package:datahack_3/Home.dart';
import 'package:datahack_3/appbarr.dart';
import 'package:flutter/material.dart';

class Notification2 extends StatelessWidget {
  const Notification2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbarr(icon2: Icons.keyboard_backspace_outlined,
        title: "Notifications",
        destination: Home(),
        icono: false,),
      body: Container(
        padding: EdgeInsetsGeometry.fromLTRB(17, 45, 23, 0),
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("New", style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Icon(Icons.location_on_outlined,
                      color: Colors.black,
                      size: 24,
                    ),
                    SizedBox(width: 13,),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Text(
                            "The location of task {Task Name} was changed from {Old Location} to {New Location}",

                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                            softWrap: true,),
                          SizedBox(height: 4,),
                          Row(
                            children: [
                              Text("4m ago",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),),
                            ],
                          )


                        ],
                      ),
                    ),
                    SizedBox(width: 13,),
                    Container(
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(Icons.location_on_outlined,
                  color: Colors.black,
                  size: 24,
                ),
                SizedBox(width: 13,),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text(
                        "The location of task {Task Name} was changed from {Old Location} to {New Location}",

                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        softWrap: true,),
                      SizedBox(height: 4,),
                      Row(
                        children: [
                          Text("4m ago",
                            style: TextStyle(
                              color: Colors.grey,
                            ),),
                        ],
                      )


                    ],
                  ),
                ),
                SizedBox(width: 13,),
                Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                )
              ],
            ),
            SizedBox(height: 24,),
            Column(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Today", style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Icon(Icons.location_on_outlined,
                      color: Colors.black,
                      size: 24,
                    ),
                    SizedBox(width: 13,),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Text(
                            "The location of task {Task Name} was changed from {Old Location} to {New Location}",

                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                            softWrap: true,),
                          SizedBox(height: 4,),
                          Row(
                            children: [
                              Text("4m ago",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),),
                            ],
                          )


                        ],
                      ),
                    ),


                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(Icons.location_on_outlined,
                  color: Colors.black,
                  size: 24,
                ),
                SizedBox(width: 13,),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text(
                        "The location of task {Task Name} was changed from {Old Location} to {New Location}",

                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        softWrap: true,),
                      SizedBox(height: 4,),
                      Row(
                        children: [
                          Text("4m ago",
                            style: TextStyle(
                              color: Colors.grey,
                            ),),
                        ],
                      )


                    ],
                  ),
                ),

              ],
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(Icons.location_on_outlined,
                  color: Colors.black,
                  size: 24,
                ),
                SizedBox(width: 13,),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text(
                        "The location of task {Task Name} was changed from {Old Location} to {New Location}",

                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        softWrap: true,),
                      SizedBox(height: 4,),
                      Row(
                        children: [
                          Text("4m ago",
                            style: TextStyle(
                              color: Colors.grey,
                            ),),
                        ],
                      )


                    ],
                  ),
                ),


              ],
            )
          ],
        ),
      ),
    );
  }
}
