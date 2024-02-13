import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:valorant_api/consts/colors.dart';
import 'package:valorant_api/models/map_model.dart';
import 'package:valorant_api/widgets/const/space.dart';

class MapDetailPage extends StatelessWidget {
  const MapDetailPage({super.key, required this.currentMap});
  final MapModel currentMap;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ProjectColor.barColor,
        title: Text(currentMap.displayName,style: TextStyle(fontSize: 40),),
        ),
      body: Column(
        children: [
          const SpaceWidget(),
          SizedBox(
            height: 250,
            child: Stack(
              children: [
                CachedNetworkImage(imageUrl: currentMap.splash!),
                Positioned(
                  child: Center(
                    child: CachedNetworkImage(imageUrl: currentMap.displayIcon!),
                  )
                  )
              ],
              )
          ),
          SizedBox(child: Text(currentMap.coordinates!,style: const TextStyle(fontSize: 20),),),
          const SpaceWidget(),
          const Padding(
            padding: EdgeInsets.all(25.0),
            child: Center(
              child: Text(
                "#  DESCRIPTION  #",
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,)
                ),
            ),
            ),
          Padding(
            padding: const EdgeInsets.only(
            left: 15, right: 15, bottom: 25),
              child: Text(
                currentMap.narrativeDescription!,
                style: const TextStyle(fontSize: 15),
              ),
          ),
        ]
        ),
      );
  }
}