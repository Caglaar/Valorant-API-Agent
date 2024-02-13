import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:valorant_api/consts/colors.dart';
import 'package:valorant_api/view_models/bottom_nav_provider.dart';
import 'package:valorant_api/widgets/agent/home_page_agents_body.dart';
import 'package:valorant_api/widgets/home_page/home_page_bottom.dart';
import 'package:valorant_api/widgets/map/home_page_maps_body.dart';
import 'package:valorant_api/widgets/weapon/home_page_weapons_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavigationBarProvider>(
      builder: (context,bottomNavigationBarProvider,child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              "Valorant API App",
              style: TextStyle(color: ProjectColor.textColor,fontSize: 24),
            ),
            backgroundColor: ProjectColor.barColor,
          ),
          body: IndexedStack(
            index: bottomNavigationBarProvider.selectedIndex,
            children: const [
              HomePageAgentBody(),
              HomePageMapsBody(),
              HomePageWeaponsBody(),
            ],
          ),
          bottomNavigationBar: ValorantBottomNavigator(
            currentIndex: bottomNavigationBarProvider.selectedIndex,
            onItemTapped: bottomNavigationBarProvider.setSelectedIndex,
          ),
        );
      }
    );
  }
}
