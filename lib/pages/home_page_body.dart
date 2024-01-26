import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:valorant_api/models/agent_model.dart';
import 'package:valorant_api/pages/agent_detail.dart';
import 'package:valorant_api/services/valorant_api.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({super.key});

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  late Future<List<AgentModel>> _agentList;

  @override
  void initState() {
    super.initState();
    _agentList = ValorantApi.getAgentData();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<AgentModel>>(
      future: _agentList,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<AgentModel> _list = snapshot.data!;
          return GridView.builder(
            itemCount: _list.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1,
            ),
            itemBuilder: (context, index) {
              var current = _list[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AgentDetailPage(agent: current),
                    ),
                  );
                },
                child: Card(
                  color: Colors.tealAccent[700],
                  shadowColor: Colors.tealAccent[700],
                  child: CachedNetworkImage(imageUrl: current.displayIcon),
                ),
              );
            },
          );
        } else if (snapshot.hasError) {
          return const Center(child: Text("ERROR"),);
        } else {
          return const Center(child: CircularProgressIndicator(),); // Yükleme göstergesi
        }
      },
    );
  }
}
