import 'package:flutter/material.dart';
import 'package:valorant_api/models/weapons_model.dart';
import 'package:valorant_api/services/valorant_api.dart';

class WeaponsProvider extends ChangeNotifier {
    List<WeaponModel> _weaponList = [];
    List<WeaponModel> get weaponList => _weaponList;

    Future<void> getWeaponList()async{
      _weaponList = await ValorantApi.getWeaponData();
      Future.delayed(const Duration(milliseconds: 30),(){
        notifyListeners();
      });
      notifyListeners();
    }

}