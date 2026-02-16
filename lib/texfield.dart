import 'dart:ffi';
import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final String text1;
  final bool bool1;
  final Icon icon1;
  final double high1;
  const MyTextfield({required this.text1,this.bool1=true,this.icon1=const Icon(Icons.mail),this.high1=56});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: high1 ,
      child: TextField(

        controller: TextEditingController(text: text1 ),
        autocorrect: true,
        obscureText: bool1,
        style: TextStyle(
          color: Colors.grey,
          fontSize: 16,
        ),

        decoration: InputDecoration(
          prefixIcon: icon1,
            contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          labelText:text1,
          labelStyle: TextStyle(
            color: Colors.grey,
            fontSize: 20,
            fontFamily: 'Popins',

          ),

          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white,)
          ),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderSide: BorderSide(width: 50)
          )


        ),
      ),
    );
  }
}
