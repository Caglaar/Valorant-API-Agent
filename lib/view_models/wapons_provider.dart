import 'package:flutter/material.dart';
import 'package:valorant_api/models/agent_model.dart';
import 'package:valorant_api/services/valorant_api.dart';

class WeaponsProvider extends ChangeNotifier {
    List<AgentModel> _agentLists = [];
    List<AgentModel> get agentList => _agentLists;

    Future<void> getAgentList()async{
      _agentLists = await ValorantApi.getAgentData();
      /* Future.delayed(Duration(milliseconds: 30),(){
        notifyListeners();
      }); */
      notifyListeners();
    }

    void deleteListMember(int index){
      _agentLists.removeAt(index);
      notifyListeners();
    }

}