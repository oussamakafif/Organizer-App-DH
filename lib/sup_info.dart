import 'package:flutter/material.dart';

class SupInfo extends StatelessWidget {
  final String name;
  const SupInfo({required this.name});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
    behavior: HitTestBehavior.opaque,
    onTap: (){ print("oussama"); },
      child:Container(
      padding: EdgeInsetsGeometry.fromLTRB(3, 7, 3, 7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Color(0xFFF7F7F7),
      ),
      child: Row(
        children:<Widget> [
          Icon(Icons.phone,size: 25,color: Colors.black,),
          SizedBox(width: 7,),
          Text(name,style: TextStyle(
            fontSize: 14,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),)
        ],
      ),
      ),
    );
  }
}
