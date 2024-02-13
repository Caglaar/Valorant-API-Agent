import 'package:dio/dio.dart';
import 'package:valorant_api/models/agent_model.dart';
import 'package:valorant_api/models/map_model.dart';

class AgentGet {
  static List<AgentModel> fromJson(dynamic json) {
    return json['data']
        .where((data) => data['isPlayableCharacter'] == true)
        .map<AgentModel>((data) => AgentModel.fromJson(data))
        .toList();
  }
}
class MapGet {
  static List<MapModel> fromJson(dynamic json) {
    return json['data']
        .where((data) => data['splash'] != null)
        .where((data) => data['narrativeDescription'] != null)
        .where((data) => data['coordinates'] != null)
        .where((data) => data['displayIcon'] != null)
        .map<MapModel>((data) => MapModel.fromJson(data))
        .toList();
  }
}
class WeaponGet {
  static List<AgentModel> fromJson(dynamic json) {
    return json['data']
        .where((data) => data['isPlayableCharacter'] == true)
        .map<AgentModel>((data) => AgentModel.fromJson(data))
        .toList();
  }
}


class ValorantApi{
  static const String _url = "https://valorant-api.com/v1/";

  static Future<List<AgentModel>> getAgentData() async 
  {
    try {
      Response response = await Dio().get("${_url}agents");
      final data = response.data;
      return AgentGet.fromJson(data);
    } catch (e) {
      rethrow;
    }
  }
  static Future<List<MapModel>> getMapData() async 
  {
    try {
      Response response = await Dio().get("${_url}maps");
      final data = response.data;
      return MapGet.fromJson(data);
    } catch (e) {
      rethrow;
    }
  }
  static Future<List<AgentModel>> getWeaponData() async 
  {
    try {
      Response response = await Dio().get("${_url}weapons");
      final data = response.data;
      return AgentGet.fromJson(data);
    } catch (e) {
      rethrow;
    }
  }
  
}