import 'package:flutter/material.dart';
import 'appbarr_for_home.dart';
import 'models/task_organiser.dart';
import 'package:datahack_3/organizers_column.dart';
import 'daycolour.dart';

class Organizers extends StatefulWidget {
  const Organizers({super.key, required this.loginUser});

  final TaskOrganiser loginUser;

  @override
  State<Organizers> createState() => _OrganizersState();
}

class _OrganizersState extends State<Organizers> {
  // Vos variables locales pour l'état visuel restent inchangées
  bool a = false;
  Icon dynamicIcon = const Icon(Icons.filter_alt, color: Colors.blue);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/Login.png"),
                  fit: BoxFit.cover,
                ),
              ),
              padding: const EdgeInsets.fromLTRB(20, 35, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  AppbarrForHome(loginUser: widget.loginUser),
                  const SizedBox(height: 23.92),
                  const Text(
                    "Organizers",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 23.92),

                  // --- TON TEXTFIELD ---
                  SizedBox(
                    height: 56,
                    child: TextField(
                      autocorrect: true,
                      obscureText: false,
                      style: const TextStyle(color: Colors.grey, fontSize: 16),
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: 8,
                        ),
                        hintText: "Search Organizers",
                        labelStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontFamily: 'Popins',
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            if (a == false) {
                              setState(() {
                                a = true;
                                dynamicIcon = const Icon(
                                  Icons.filter_alt_outlined,
                                  color: Colors.black,
                                );
                              });
                            } else if (a == true) {
                              setState(() {
                                a = false;
                                dynamicIcon = const Icon(
                                  Icons.filter_alt,
                                  color: Colors.black,
                                );
                              });
                            }
                          },
                          child: dynamicIcon,
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(width: 1),
                        ),
                      ),
                    ),
                  ),

                  // CORRECTION SYNTAXE ICI : Ajout du ...[ ] pour englober les deux widgets du IF
                  if (a == false) ...[
                    const SizedBox(height: 24),
                     Text(
                      "Statue",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                     ),
                      SizedBox(height: 12),
                     Row(
                      children: <Widget>[
                        Daycolour(
                          widdth: 58,
                          day: "Free",
                          couleur: Colors.red,
                          textcolour: Colors.white,
                        ),
                        SizedBox(width: 3),
                        Daycolour(
                          widdth: 89,
                          day: "Available",
                          couleur: Colors.yellow,
                          textcolour: Colors.white,
                        ),
                        SizedBox(width: 3),
                        Daycolour(
                          widdth: 75,
                          day: "Absent",
                          couleur: Colors.yellow,
                          textcolour: Colors.white,
                        ),
                      ],
                    ),
                    SizedBox(height: 4),
                    Daycolour(
                      widdth: 84,
                      day: "Apply",
                      couleur: Colors.yellow,
                      textcolour: Colors.white,
                    )
                  ],

                  const SizedBox(height: 23.92),

                  // La liste reste intacte (aucun filtrage)
                  Column(
                    children: <Widget>[
                      const OrganizersColumn(
                        text3: "Oussama Kafif",
                        text4: "Away",
                      ),
                      const SizedBox(height: 12),
                      const OrganizersColumn(
                        text3: "Boussebata Issam",
                        text4: "Available",
                      ),
                      const SizedBox(height: 12),
                      const OrganizersColumn(
                        text3: "Oussama Kafif",
                        text4: "Away",
                      ),
                      const SizedBox(height: 12),
                      const OrganizersColumn(
                        text3: "Oussama Kafif",
                        text4: "Busy",
                      ),
                      const SizedBox(height: 12),
                      const OrganizersColumn(
                        text3: "Oussama Kafif",
                        text4: "Available",
                      ),
                      const SizedBox(height: 12),
                      const OrganizersColumn(
                        text3: "Oussama Kafif",
                        text4: "Away",
                      ),
                      const SizedBox(height: 12),
                      const OrganizersColumn(
                        text3: "Oussama Kafif",
                        text4: "Busy",
                      ),
                      const SizedBox(height: 12),
                      const OrganizersColumn(
                        text3: "Oussama Kafif",
                        text4: "Available",
                      ),
                      const SizedBox(height: 12),
                    ],
                  ),
                ],
              ),
            ),
          ], // CORRECTION SYNTAXE ICI : Fermeture propre du Stack
        ),
      ),
    );
  }
}