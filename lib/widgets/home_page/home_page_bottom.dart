import 'package:flutter/material.dart';

class ValorantBottomNavigator extends StatefulWidget {
  final int currentIndex;
  final ValueChanged<int> onItemTapped;

  const ValorantBottomNavigator({
    Key? key,
    required this.currentIndex,
    required this.onItemTapped,
  }) : super(key: key);

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
      currentIndex: widget.currentIndex,
      selectedItemColor: Colors.black,
      backgroundColor: Colors.tealAccent[400],
      onTap: widget.onItemTapped,
    );
  }
}
