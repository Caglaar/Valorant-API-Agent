import 'package:flutter/material.dart';
import 'package:valorant_api/consts/colors.dart';
import 'package:valorant_api/models/weapons_model.dart';

class DamageRangeCard extends StatelessWidget {
  const DamageRangeCard({Key? key, required this.currentWeapon});
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
                const Text("Range ", style: TextStyle(fontSize: 24,color: ProjectColor.textColor)),
                Text("${currentWeapon.weaponStats!.damageRanges[0].rangeStartMeters.toString()} - ${currentWeapon.weaponStats!.damageRanges[0].rangeEndMeters.toString()}", style: const TextStyle(fontSize: 24,color: ProjectColor.textColor)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Head Damage ", style: TextStyle(fontSize: 24,color: ProjectColor.textColor)),
                Text(currentWeapon.weaponStats!.damageRanges[0].headDamage.toString(), style: const TextStyle(fontSize: 24,color: ProjectColor.textColor)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Bod Damage ", style: TextStyle(fontSize: 24,color: ProjectColor.textColor)),
                Text(currentWeapon.weaponStats!.damageRanges[0].bodyDamage.toString(), style: const TextStyle(fontSize: 24,color: ProjectColor.textColor)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Leg Damage ", style: TextStyle(fontSize: 24,color: ProjectColor.textColor)),
                Text(currentWeapon.weaponStats!.damageRanges[0].legDamage.toString(), style: const TextStyle(fontSize: 24,color: ProjectColor.textColor)),
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
/*
    final double headDamage;
    final double bodyDamage;
    final double legDamage;
*/