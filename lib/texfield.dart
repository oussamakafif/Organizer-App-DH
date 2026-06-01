import 'dart:ffi';
import 'package:flutter/material.dart';

class MyTextfield extends StatefulWidget {
  final String text1;
  final bool bool1;
  final Icon icon1;
  final Icon? icon2;
  final double high1;
  final bool? bool2;
  const MyTextfield({required this.text1,this.bool1=true,this.icon1=const Icon(Icons.mail),this.high1=56,this.icon2,this.bool2});

  @override
  State<MyTextfield> createState() => _MyTextfieldState();
}

class _MyTextfieldState extends State<MyTextfield> {
late   bool a;
  late Icon dynamicIcon ;
  @override
  initState(){
    super.initState();
    dynamicIcon=widget.icon2 ?? Icon(Icons.filter_alt_outlined);
     a=widget.bool2 ?? false;
  }
  Widget build(BuildContext context) {
    return Container(
      height: widget.high1 ,
      child: TextField(

        controller: TextEditingController(text: widget.text1 ),
        autocorrect: true,
        obscureText: widget.bool1,
        style: TextStyle(
          color: Colors.grey,
          fontSize: 16,
        ),

        decoration: InputDecoration(
          prefixIcon: widget.icon1,
            contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          hintText:widget.text1,
          labelStyle: TextStyle(
            color: Colors.grey,
            fontSize: 20,
            fontFamily: 'Popins',

          ),
            suffixIcon: dynamicIcon != null
          ? GestureDetector(
              onTap: () {
                if(a==!true){
                  setState(() {
                     a=!a;
                    dynamicIcon=Icon(Icons.filter_alt);
                  });
                }else if (a==!false){
                  setState(() {
                    a=!a;
                    dynamicIcon=Icon(Icons.filter_alt_outlined);
                  });
                }

              },
              child: dynamicIcon!,
                )
              : null,



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
