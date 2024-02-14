import 'package:flutter/material.dart';
import 'package:valorant_api/consts/colors.dart';
import 'package:valorant_api/models/weapons_model.dart';

class StatInfoCard extends StatelessWidget {
  const StatInfoCard({Key? key, required this.currentWeapon});
  final WeaponModel currentWeapon;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ProjectColor.barColor.withOpacity(0.2),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Fire Rate ", style: TextStyle(fontSize: 24,color: ProjectColor.textColor)),
                Text(currentWeapon.weaponStats!.fireRate.toString(), style: const TextStyle(fontSize: 24,color: ProjectColor.textColor)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Equip Time ", style: TextStyle(fontSize: 24,color: ProjectColor.textColor)),
                Text(currentWeapon.weaponStats!.equipTimeSeconds.toString(), style: const TextStyle(fontSize: 24,color: ProjectColor.textColor)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Reload Time ", style: TextStyle(fontSize: 24,color: ProjectColor.textColor)),
                Text(currentWeapon.weaponStats!.reloadTimeSeconds.toString(), style: const TextStyle(fontSize: 24,color: ProjectColor.textColor)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
/*
final double fireRate;
    final double equipTimeSeconds;
    final double reloadTimeSeconds;
*/