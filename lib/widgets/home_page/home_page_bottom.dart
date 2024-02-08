import 'package:flutter/material.dart';
import 'package:valorant_api/consts/colors.dart';

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
          icon: Icon(Icons.home,color: ProjectColor.textColor,size: 36,),
          label: 'Agents',
          
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.map,color: ProjectColor.textColor,size: 36,),
          label: 'Maps',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.align_vertical_bottom_rounded,color: ProjectColor.textColor,size: 36,),
          label: 'Weapons',
        ),
      ],
      currentIndex: widget.currentIndex,
      selectedItemColor: ProjectColor.textColor,
      backgroundColor: ProjectColor.barColor,
      onTap: widget.onItemTapped,
      unselectedItemColor: ProjectColor.textColor,
      selectedFontSize: 24,
    );
  }
}
