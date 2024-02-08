import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:valorant_api/consts/colors.dart';
import 'package:valorant_api/models/agent_model.dart';

class AbilityCard extends StatelessWidget {
  const AbilityCard({
    super.key,
    required this.agent,
  });

  final AgentModel agent;

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      (BuildContext context, int index) {
        final Ability agentAbilities = agent.abilities[index];

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          child: Card(
            elevation: 0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            clipBehavior: Clip.antiAlias,
            margin: EdgeInsets.zero,       
            child: ExpansionTile(
              collapsedBackgroundColor: ProjectColor.barColor,
              backgroundColor: ProjectColor.barColor,
              leading: Padding(
                padding: const EdgeInsets.all(10.0),
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: CachedNetworkImage(
                    imageUrl: agentAbilities.displayIcon ?? '',
                    progressIndicatorBuilder:
                        (context, url, downloadProgress) =>
                            const Center(
                              child: CircularProgressIndicator(
                              color: Colors.amber,
                          )),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
              ),
              title: Text(
                agentAbilities.displayName.toUpperCase(),
                style: const TextStyle(fontWeight: FontWeight.bold,color: ProjectColor.textColor),
                maxLines: 1,
                overflow: TextOverflow.fade,
                
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    agentAbilities.description,
                    style: const TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      childCount: agent.abilities.length,
    ));
  }
}