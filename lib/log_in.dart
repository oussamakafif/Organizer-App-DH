import 'package:datahack_3/texfield.dart';
import 'package:flutter/material.dart';
import 'Home.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body :
      Center(
        child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/Login.png"),
                        fit: BoxFit.cover)
                ),
              ),
             Center(
              child:SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsetsGeometry.symmetric(
                        horizontal: 20, vertical: 30),
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[

                          Image.asset('assets/Simple.png',
                          width: 256,
                            height: 256,
                          ),
                          SizedBox(height: 36,),
                          Text(
                            "Please Log In to your account ",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black87,
                            ),
                          ),
                          SizedBox(height: 36,),
                          MyTextfield(text1: "Email",
                            icon1: Icon(Icons.email),
                            bool1: false,
                            high1: 56,),
                          SizedBox(height: 16,),
                          MyTextfield(text1: "password",
                            high1: 56,
                            bool1: true,
                            icon1: Icon(Icons.lock),),
                          SizedBox(height: 36,),
                          ElevatedButton(
                            onPressed: () => Navigator.push(context,
                              MaterialPageRoute(builder: (context)=> Home() ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              fixedSize: Size(600,62),

                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusGeometry.circular(
                                      50)),
                            ),
                            child: Text(
                              "Login"
                              , style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                            ),
                            ),
                          ),
                        ]
                    ),
                  )),
             ),
            ],
          ),
      )

    );
  }
}