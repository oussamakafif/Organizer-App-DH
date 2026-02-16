import 'package:flutter/material.dart';

class Daycolour extends StatefulWidget {
  Color couleur,textcolour;
  String day;
  double widdth=73;


  Daycolour({this.couleur=Colors.white, this.textcolour=Colors.black, this.day="Day 01", this.widdth=73});

  @override
  State<Daycolour> createState() => _DaycolourState();
}

class _DaycolourState extends State<Daycolour> {
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: (){ setState(() {
        if(widget.couleur==Colors.white){
          widget.couleur=Colors.yellow;
          widget.textcolour=Colors.white;
        }else{
          widget.couleur=Colors.white;
          widget.textcolour=Colors.black;
        }
      });
      },
      child: Container(
        width: widget.widdth,
        height: 36,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          color: widget.couleur,
        ),
        child: Center(
          child: Text(
            widget.day,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: widget.textcolour,
            ),
          ),
        ),
      )
    );
  }
}
