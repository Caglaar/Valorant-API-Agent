import 'package:flutter/material.dart';
import 'package:valorant_api/widgets/home_page/home_page_agents_body.dart';
import 'package:valorant_api/widgets/home_page/home_page_bottom.dart';
import 'package:valorant_api/widgets/home_page/home_page_maps_body.dart';
import 'package:valorant_api/widgets/home_page/home_page_weapons_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Valorant API App",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.tealAccent[400],
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: const [
          HomePageAgentBody(),
          HomePageMapsBody(),
          HomePageWeaponsBody(),
        ],
      ),
      bottomNavigationBar: ValorantBottomNavigator(
        currentIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
