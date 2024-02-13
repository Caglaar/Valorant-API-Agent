import 'package:flutter/material.dart';
import 'package:valorant_api/consts/colors.dart';
import 'package:valorant_api/models/weapons_model.dart';

class ShopInfoCard extends StatelessWidget {
  const ShopInfoCard({Key? key, required this.currentWeapon});
  final WeaponModel currentWeapon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Card(
        color: ProjectColor.barColor.withOpacity(0.2),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Cost ", style: TextStyle(fontSize: 24,color: ProjectColor.textColor)),
                  Text(currentWeapon.shopData!.cost.toString(), style: const TextStyle(fontSize: 24,color: ProjectColor.textColor)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Category", style: TextStyle(fontSize: 24,color: ProjectColor.textColor)),
                  Text(currentWeapon.shopData!.category, style: const TextStyle(fontSize: 24,color: ProjectColor.textColor)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}