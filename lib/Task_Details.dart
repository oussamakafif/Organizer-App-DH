import 'package:flutter/material.dart';
import 'Home.dart';

class TaskDetails extends StatelessWidget {
  const TaskDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: Container(
          height: 90,
          padding: EdgeInsetsGeometry.fromLTRB(15, 40, 20, 7),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10,
                spreadRadius: 0.00001,
                blurStyle: BlurStyle.normal,
              ),
            ],
          ),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                IconButton(
                  onPressed: () => Navigator.push(context,
            MaterialPageRoute(builder: (context)=> Home() ),
          ),
                  icon: Icon(
                    Icons.keyboard_backspace_outlined,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  "Task details",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/Task Details.png"), fit: BoxFit.fill),
        ),
        padding: EdgeInsetsGeometry.fromLTRB(20, 31, 20, 0),
        child: Container(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Task Name",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 36),
              Container(
                height: 387.08,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: [
                        Icon(Icons.access_time, size: 20, color: Colors.black),
                        SizedBox(width: 8),
                        Text(
                          "14:00 - 17:00",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.location_on_outlined,
                            size: 24, color: Colors.black),
                        SizedBox(width: 8),
                        Text("Location",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                          fontWeight: FontWeight.w700,
                        ),),


                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Icon(Icons.add_comment_outlined,
                              color: Colors.black,
                              size: 24,
                              weight: 60,),
                            SizedBox(width: 8,),
                            Text(
                              "Description",style: TextStyle(
                              color: Colors.black,
                              fontSize: 19,
                              fontWeight: FontWeight.w700,
                            ),
                            )
                          ],
                        ),
                        SizedBox(height: 8,),
                         Text(
                          "Lorem Ipsum Dolor SitAmet.Lorem Ipsum Dolor Sit Amet.Lorem Ipsum Dolor SitAmet.Lorem Ipsum Dolor Sit Amet.Lorem Ipsum Dolor SitAmet.Lorem Ipsum Dolor Sit Amet.Lorem Ipsum Dolor SitAmet.Lorem Ipsum Dolor Sit Amet.Lorem IpsumDolor Sit Amet.Lorem Ipsum Dolor SitAmet.Lorem Ipsum Dolor Sit Amet."
                          ,style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                         softWrap: true,
                         )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Icon(
                              Icons.person_outline_outlined,
                              color: Colors.black,
                              size: 26,

                            ),
                            SizedBox(width: 8,),
                            Text(
                              "Supervisor",style: TextStyle(
                              color: Colors.black,
                              fontSize: 19,fontWeight: FontWeight.w700,
                            )
                            ),
                          ],
                        ),
                        SizedBox(height:18,),
                        Container(
                          height: 50,
                          padding: EdgeInsetsGeometry.fromLTRB(24, 0, 33.21, 0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Color(0xFFFFF2BD),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:<Widget> [
                              Text(
                                "Issam Boussebata",style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              fontWeight: FontWeight.w700,)
                              ),
                              Icon(Icons.phone,size: 27  ,color: Colors.black,),
                            ],

                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
