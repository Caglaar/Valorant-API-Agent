import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:valorant_api/pages/map_detail.dart';
import 'package:valorant_api/view_models/maps_provider.dart';
import 'package:valorant_api/widgets/map/map_card.dart';


class HomePageMapsBody extends StatelessWidget {
  const HomePageMapsBody({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MapsProvider>(context,listen: false);
    provider.getMapList();
    return Consumer<MapsProvider>
    (
      builder: (context,mapsProvider,child) 
        {
          return GridView.builder
          (
            itemCount: mapsProvider.mapList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 4,
              ),
            itemBuilder: (context, index) 
            {
                final currentMap = mapsProvider.mapList[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MapDetailPage(currentMap: currentMap,),
                      ),
                    );
                  },
                  child: MapCard(currentMap: currentMap)
                );
            }
        );
      }
    );
}
}