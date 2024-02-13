import 'package:flutter/material.dart';
import 'package:valorant_api/models/map_model.dart';
import 'package:valorant_api/services/valorant_api.dart';

class MapsProvider extends ChangeNotifier {
  List<MapModel> _mapList = [];
  List<MapModel> get mapList => _mapList;
  
  Future<void> getMapList()async{
      _mapList = await ValorantApi.getMapData();
       Future.delayed(const Duration(milliseconds: 30),(){
        notifyListeners();
      }); 
      notifyListeners();
    }
}