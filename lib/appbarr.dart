import 'package:flutter/material.dart';
class Appbarr extends StatelessWidget implements PreferredSizeWidget {
   IconData icon2;
   String title;
   Widget destination;
   bool icono;



   Appbarr({required this.icon2, required this.title,required this.destination,this.icono=true});


@override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(97);
  @override
  Widget build(BuildContext context) {
    return Container(
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: Icon(
                      Icons.keyboard_backspace,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              if(icono)
              IconButton(onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => destination),
                );
              },
                icon: Icon(
                icon2,
                color: Colors.black,
                size: 30,
              ),
              )
            ],
          ),
        ),
      );
  }
}
