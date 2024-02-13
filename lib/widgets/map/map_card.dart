import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:valorant_api/consts/colors.dart';
import 'package:valorant_api/models/map_model.dart';

class MapCard extends StatelessWidget {
  const MapCard({super.key,required this.currentMap});
  final MapModel currentMap;
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: ProjectColor.barColor,
      child: Stack(
        children: [
          CachedNetworkImage(imageUrl: currentMap.listViewIcon!),
          Positioned(
            child: Center(
              child: Text(
                currentMap.displayName,
                style: const TextStyle(fontSize: 40, color: ProjectColor.textColor, fontWeight: FontWeight.bold),
                ),
            ),
          ),
        ],
      ),
    );
  }
}