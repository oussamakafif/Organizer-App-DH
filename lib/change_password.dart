import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Change_password extends StatelessWidget {
  const Change_password({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold( appBar: PreferredSize(
      preferredSize: const Size.fromHeight(90),
      child: Container(
        height: 90,
        padding: const EdgeInsets.fromLTRB(15, 40, 20, 7),
        decoration: const BoxDecoration(
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            // CORRECTION ICI : La parenthèse de l'IconButton entoure onPressed ET icon
            IconButton(
              onPressed: () {
                Navigator.pop(context); // Retourne à la page précédente (Profile)
              },
              icon: const Icon(
                Icons.keyboard_backspace_outlined,
                color: Colors.black,
                size: 30,
              ),
            ),

          ],
        ),
      ),
    ));
  }
}
