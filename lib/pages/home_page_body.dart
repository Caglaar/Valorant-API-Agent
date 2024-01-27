import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valorant_api/models/agent_model.dart';
import 'package:valorant_api/pages/agent_detail.dart';
import 'package:valorant_api/pages/agent_detail_copy.dart';
import 'package:valorant_api/services/valorant_api.dart';

final agentListProvider = FutureProvider<List<AgentModel>>((ref) async {
  return await ValorantApi.getAgentData();
});
final selectedAgentStateProvider = StateProvider<AgentModel?>((ref) => null);
class HomePageBody extends ConsumerWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final agentListAsyncValue = ref.watch(agentListProvider);

    return agentListAsyncValue.when(
      data: (agents) {
        return GridView.builder(
          itemCount: agents.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1,
          ),
          itemBuilder: (context, index) {
            final currentAgent = agents[index];
            return GestureDetector(
              onTap: () {
                ref.read(selectedAgentStateProvider.notifier).state = currentAgent;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AgentDetailPageCopy(agent: currentAgent,),
                  ),
                );
              },
              child: Card(
                color: Colors.tealAccent[700],
                shadowColor: Colors.tealAccent[700],
                child: CachedNetworkImage(imageUrl: currentAgent.displayIcon),
              ),
            );
          },
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => const Center(child: Text("ERROR")),
    );
  }
}