import 'package:flutter/material.dart';
class Indivtask extends StatelessWidget {
  final String place,
      time,
      taskname ;
  final bool isDone,QrC;

  const Indivtask({this.place="LES nouveaux salles 25",this.time="11:00 - 12:30",this.taskname="Task name", this.isDone=false,this.QrC=true});

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Container(
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                taskname,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
                if (QrC)
              Icon(Icons.qr_code,size: 30,color: Colors.black,)
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
                    time,
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
                    place,
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
          if (isDone )

            Container(
              height: 90,
              width: 500,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.43),
                borderRadius: BorderRadius.all(Radius.circular(24)),
              ),
            )

        ],
    );
  }
}
