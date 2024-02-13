import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:valorant_api/pages/weapon_detail.dart';
import 'package:valorant_api/view_models/wapons_provider.dart';
import 'package:valorant_api/widgets/weapon/weapon_card.dart';


class HomePageWeaponsBody extends StatelessWidget {
  const HomePageWeaponsBody({super.key});

  @override
  Widget build(BuildContext context) {
    final provider=Provider.of<WeaponsProvider>(context,listen: false);
      provider.getWeaponList();
        return Consumer<WeaponsProvider>
        (
          builder: (context,weaponsProvider,child) 
          {
            return GridView.builder(
              itemCount: weaponsProvider.weaponList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 3,
              ),
              itemBuilder: (context, index) {
                final currentWeapon = weaponsProvider.weaponList[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WeaponDetailPage(currentWeapon: currentWeapon,),
                      ),
                    );
                  },
                  child: WeaponCard(currentWeapon: currentWeapon,control: 0,)
                );
              },
            );
          }
        );
    
  }
}