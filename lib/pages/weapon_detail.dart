import 'package:flutter/material.dart';
import 'package:valorant_api/consts/colors.dart';
import 'package:valorant_api/models/weapons_model.dart';
import 'package:valorant_api/widgets/const/space.dart';
import 'package:valorant_api/widgets/weapon/damage_range.dart';
import 'package:valorant_api/widgets/weapon/shop_info.dart';
import 'package:valorant_api/widgets/weapon/stat_info.dart';
import 'package:valorant_api/widgets/weapon/weapon_card.dart';

class WeaponDetailPage extends StatelessWidget {
  const WeaponDetailPage({super.key, required this.currentWeapon});
  final WeaponModel currentWeapon;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(currentWeapon.displayName,style: const TextStyle(fontSize: 40),),
        backgroundColor: ProjectColor.barColor,
      ),
      body: Column(
        children: [
          WeaponCard(currentWeapon: currentWeapon,control: 1,),
          const SpaceWidget(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Center(
              child: Text(
                "#  Shop İnformation  #",
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: ProjectColor.barColor),
              ),
            ),
          ),
          ShopInfoCard(currentWeapon: currentWeapon,),
          const SpaceWidget(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Center(
              child: Text(
                "#  Stat İnformation  #",
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: ProjectColor.barColor),
              ),
            ),
          ),
          StatInfoCard(currentWeapon: currentWeapon),
          const SpaceWidget(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Center(
              child: Text(
                "#  Damage Range  #",
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: ProjectColor.barColor),
              ),
            ),
          ),
          DamageRangeCard(currentWeapon: currentWeapon)
        ],
      ),
    );
  }
}