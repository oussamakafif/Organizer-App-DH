import 'package:flutter/material.dart';
import 'models/task_organiser.dart';
import 'change_password.dart';
import 'log_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'profile.dart'; // Importé mais pas utilisé ici pour l'instant

class Settings extends StatelessWidget {
  final TaskOrganiser loginUser;

  const Settings({super.key, required this.loginUser});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle transparentButtonStyle = ElevatedButton.styleFrom(
      elevation: 0,
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.zero,
    );

    return Scaffold(
      appBar: PreferredSize(
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
              IconButton(
                onPressed: () {
                  Navigator.pop(context); // Retourne à la page précédente
                },
                icon: const Icon(
                  Icons.keyboard_backspace_outlined,
                  color: Colors.black,
                  size: 30,
                ),
              ),
              const SizedBox(width: 5),
              const Text(
                "Settings",
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
      body: Container(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 100),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                "Edit Profile",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 18),
              const Text(
                "Profile photo",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 279,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(loginUser.profileImage!),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  print("Change profile photo");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const SizedBox(
                  height: 55,
                  child: Center(
                    child: Text(
                      "Upload Image",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 18),
              const Text(
                "Full Name",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 8),
              Container(
                height: 55,
                width: double.infinity,
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                      spreadRadius: 0.00001,
                      blurStyle: BlurStyle.normal,
                    ),
                  ],
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "${loginUser.name.nom} ${loginUser.name.prenom}",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 18),
              const Text(
                "Phone Number",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 8),
              Container(
                height: 55,
                width: double.infinity,
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                      spreadRadius: 0.00001,
                      blurStyle: BlurStyle.normal,
                    ),
                  ],
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    loginUser.phoneNumber ?? "Not provided",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 29),
              const Divider(color: Colors.grey, thickness: 1),
              const SizedBox(height: 29),

              // Bouton Change Status
              Container(
                height: 68,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: ElevatedButton(
                  onPressed: () => print("Change Status"),
                  style: transparentButtonStyle,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Change Status",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 18),

              // Bouton Change Password (FIXED)
              Container(
                height: 68,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Change_password()),
                    );
                  },
                  style: transparentButtonStyle,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Change Password",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 18),

              // Bouton Log Out
              Container(
                height: 68,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(context: context,
                        barrierDismissible: true,
                        barrierColor: Colors.black.withOpacity(0.6),
                        builder : (BuildContext context){
                      return AlertDialog(
contentPadding: EdgeInsetsGeometry.all(20),

                        shape: RoundedRectangleBorder(

                          borderRadius: BorderRadius.circular(20),
                        ),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                             Icon( Icons.logout_outlined
                               ,size:24 ,
                             color: Colors.red,),
                          SizedBox(height: 20,),
                          Text("Logout Account?",style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize:20, 
                          ),),
                            Text("Are you sure want to logout account?",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                            ),),
                            SizedBox(height: 20,),
                            Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:<Widget> [
                                Container(
                                  height: 37,
                                  width: 134,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFD8D8D8),
                                    borderRadius: BorderRadius.circular(50),

                                  ),
                                  child: ElevatedButton(
                                    onPressed: () {Navigator.pop(context);},
                                   style: transparentButtonStyle,
                                  child: Text("Cancel",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black

                                  ),),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Container(
                                  height: 37,
                                  width: 134,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFF1014),
                                    borderRadius: BorderRadius.circular(50),

                                  ),
                                  child: ElevatedButton(
                                    onPressed: () async {
                                      await FirebaseAuth.instance.signOut();
                                      Navigator.push(context,MaterialPageRoute(
                                      builder: (context) => const Login(), // Replace with your target class name
                                    ), );},
                                    style: transparentButtonStyle,
                                    child: Text("Logout",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,


                                      ),),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),


                      );
                        }

                    );
                  },
                  style: transparentButtonStyle,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    alignment: Alignment.centerLeft,
                    child: const Row(
                      children: <Widget>[
                        Icon(Icons.logout_outlined, color: Colors.red, size: 20),
                        SizedBox(width: 10),
                        Text(
                          "Log Out",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.red,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}