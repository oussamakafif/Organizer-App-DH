import 'package:flutter/material.dart';
import 'appbarr_for_home.dart';
import 'models/task_organiser.dart';
import 'task_card.dart';
import 'Agendas_days/days.dart';

class Agenda extends StatefulWidget {
  const Agenda({super.key, required this.loginUser});

  final TaskOrganiser loginUser;

  @override
  State<Agenda> createState() => _AgendaState();
}

class _AgendaState extends State<Agenda> {
  int i = 0;
  String day = "Day 1";
  Color color1 = Colors.blue;
  Color color2 = Colors.grey.shade300; // Mis en gris clair pour mieux voir la progression
  Color color3 = Colors.grey.shade300;

  void updateColors() {
    if (i == 0) {
      color1 = Colors.blue;
      color2 = Colors.grey.shade300;
      color3 = Colors.grey.shade300;
    } else if (i == 1) {
      color1 = Colors.blue;
      color2 = Colors.blue;
      color3 = Colors.grey.shade300;
    } else if (i == 2) {
      color1 = Colors.blue;
      color2 = Colors.blue;
      color3 = Colors.blue;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/Login.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 35, 20, 0),
          child: Column(
            children: <Widget>[
              AppbarrForHome(loginUser: widget.loginUser),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      if (i > 0) {
                        setState(() {
                          i--;
                          day = "Day ${i + 1}";
                          updateColors();
                        });
                      }
                    },
                    icon: const Icon(
                      Icons.keyboard_arrow_left,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                  Text(
                    day,
                    style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                  IconButton(
                    onPressed: () {
                      if (i < 2) {
                        setState(() {
                          i++;
                          day = "Day ${i + 1}";
                          updateColors();
                        });
                      }
                    },
                    icon: const Icon(
                      Icons.chevron_right,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // --- TA BARRE DE PROGRESSION EN 3 SEGMENTS ---
              Row(
                children: [
                  // Segment 1
                  Expanded(
                    child: Container(
                      height: 8.0,
                      decoration: BoxDecoration(
                        color: color1,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Expanded(
                     child: Container(
                      height: 8.0,
                      decoration: BoxDecoration(
                        color: color2,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  // Segment 3
                  Expanded(
                    child: Container(
                      height: 8.0,
                      decoration: BoxDecoration(
                        color: color3,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 29),
              Expanded(
                child: SingleChildScrollView(
                  child: agenda_days[i],
        ),
      ),
            ],
          ),
        ),
      ),
    );
  }
}