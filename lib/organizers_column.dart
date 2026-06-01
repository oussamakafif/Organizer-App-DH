import 'package:flutter/material.dart';





class OrganizersColumn extends StatefulWidget {
  final String text3 ;
  final String text4 ;
  const OrganizersColumn({super.key,  this.text3 = "Oussama Kafif",  this.text4 = "Away"});

  @override
  State<OrganizersColumn> createState() => _OrganizersColumnState();
}

class _OrganizersColumnState extends State<OrganizersColumn> {
  @override
late Color color1=Colors.grey;
  late String text5=widget.text4;
  late String text6=widget.text3;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(widget.text4=="Busy"){
      color1=Colors.red;
    }else if(widget.text4=="Available") {
      color1 = Colors.green;
    }}
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 80,
          decoration: BoxDecoration(
            color: color1,
            borderRadius: BorderRadius.circular(18),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 0.5,
                spreadRadius: 0.1,
              ),
            ],
          ),
        ),
        Container(
          height: 80,
          margin: EdgeInsetsGeometry.fromLTRB(3, 0, 0, 0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius:   BorderRadiusGeometry.circular(18),
          ),
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                       Text(
                        text6,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                       Text(
                        text5,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ]
                ),
                const Icon(
                  Icons.local_phone,
                  color: Colors.black,
                  size: 30,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
