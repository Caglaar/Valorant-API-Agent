import 'package:dio/dio.dart';
import 'package:valorant_api/models/agent_model.dart';

class AgentGet {
  static List<AgentModel> fromJson(dynamic json) {
    return json['data']
        .where((data) => data['isPlayableCharacter'] == true) // Sadece oynanabilir ajanları seçer
        .map<AgentModel>((data) => AgentModel.fromJson(data))
        .toList();
  }
}

class ValorantApi{
  static const String _url = "https://valorant-api.com/v1/agents";

  static Future<List<AgentModel>> getAgentData() async 
  {
    try {
      Response response = await Dio().get(_url);
      final data = response.data;
      return AgentGet.fromJson(data);
    } catch (e) {
      rethrow;
    }
  }
}