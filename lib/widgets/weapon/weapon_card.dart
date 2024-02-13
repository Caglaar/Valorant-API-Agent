import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:valorant_api/consts/colors.dart';
import 'package:valorant_api/models/weapons_model.dart';

class WeaponCard extends StatelessWidget {
  const WeaponCard({super.key,required this.currentWeapon, required this.control});
  final WeaponModel currentWeapon;
  final int control;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 200,
          width: 2000,
          child: Card(
            color: ProjectColor.barColor.withOpacity(0.2),
            child: CachedNetworkImage(imageUrl: currentWeapon.displayIcon),
          ),
        ),
        if(control == 0)
          Positioned(
            left: 8,
            bottom: 8,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(currentWeapon.displayName,style: const TextStyle(fontSize: 30,color: ProjectColor.textColor),),
              ),
          )
      ]
      
    );
  }
}