import 'package:flutter/material.dart';
import 'Home.dart';
import 'Organizers.dart';
import 'package:datahack_3/models/task_organiser.dart';

class NavigationHost extends StatefulWidget {
  const NavigationHost({super.key, required this.loginUser});

  final TaskOrganiser loginUser;

  @override
  State<NavigationHost> createState() => _NavigationHostState();
}

class _NavigationHostState extends State<NavigationHost> {
  int _currentIndex = 0;

  // C'EST CE WIDGET / CETTE LISTE ICI !
  // On ajoute "late" juste avant "final" à cet endroit précis :
  late final List<Widget> _pages = [
    Home(loginUser: widget.loginUser),
    Organizers(loginUser: widget.loginUser),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.people_outline),
            selectedIcon: Icon(Icons.people),
            label: 'Organizers',
          ),
        ],
      ),
    );
  }
}