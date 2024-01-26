import 'package:flutter/material.dart';
import 'package:valorant_api/pages/home_page_body.dart';
import 'package:valorant_api/pages/home_page_bottom.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Valorant API App",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.tealAccent[400],
        ),
      body: const HomePageBody(),
      bottomNavigationBar:  const ValorantBottomNavigator()
    );
  }
}