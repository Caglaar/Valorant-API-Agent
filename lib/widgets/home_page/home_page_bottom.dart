import 'package:flutter/material.dart';

class ValorantBottomNavigator extends StatefulWidget {
  const ValorantBottomNavigator({super.key});

  @override
  State<ValorantBottomNavigator> createState() => _ValorantBottomNavigatorState();
}

class _ValorantBottomNavigatorState extends State<ValorantBottomNavigator> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Agents',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Maps',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.align_vertical_bottom_rounded),
            label: 'Weapons',
          ),
        ],
      currentIndex: 0,
      selectedItemColor: Colors.black,
      backgroundColor: Colors.tealAccent[400],
    );
  }
}