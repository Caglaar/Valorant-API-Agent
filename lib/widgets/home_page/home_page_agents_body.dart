import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:valorant_api/pages/agent_detail.dart';
import 'package:valorant_api/view_models/agent_provider.dart';


class HomePageAgentBody extends StatelessWidget {
  const HomePageAgentBody({super.key});

  @override
  Widget build(BuildContext context) {
    final provider=Provider.of<AgentProvider>(context,listen: false);
      provider.getAgentList();
        return Consumer<AgentProvider>(
          builder: (context,agentProvider,child) {
            return GridView.builder(
              itemCount: agentProvider.agentList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1,
              ),
              itemBuilder: (context, index) {
                final currentAgent = agentProvider.agentList[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AgentDetailPage(agent: currentAgent,),
                      ),
                    );
                  },
                  child: Card(
                    color: currentAgent.backgroundGradientColors.isNotEmpty ? Color(int.parse("0x${currentAgent.backgroundGradientColors[1]}")) : Colors.tealAccent[700],
                    shadowColor: Colors.tealAccent[700],
                    child: CachedNetworkImage(imageUrl: currentAgent.displayIcon),
                  ),
                );
              },
            );
          }
        );
    
  }
}

