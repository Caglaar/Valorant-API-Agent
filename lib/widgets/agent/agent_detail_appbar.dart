import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:valorant_api/models/agent_model.dart';

class AgentDetailAppBar extends StatelessWidget {
  const AgentDetailAppBar({
    super.key,
    required this.agent,
  });

  final AgentModel agent;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 700 * 0.4,
      child: Stack(children: [
        Container(
          width: double.infinity,
          height: 700 * 0.4,
          color: Colors.tealAccent[700],
          child: CachedNetworkImage(
            imageUrl: agent.killfeedPortrait,
            progressIndicatorBuilder: (context, url, downloadProgress) =>
                const Center(
                    child: CircularProgressIndicator(
                      color: Colors.amber,
                )),
            errorWidget: (context, url, error) => const Icon(Icons.error),
            fit: BoxFit.cover,
            color: const Color.fromRGBO(255, 255, 255, 0.3),
            colorBlendMode: BlendMode.modulate,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                agent.displayName.toUpperCase(),
                style: const TextStyle(fontSize: 40),
              ),
              Text(
                agent.role?.displayName.toString() ?? '',
                style: const TextStyle(fontSize: 30),
              ),
            ],
          ),
        ),

        
      ]),
    );
  }
}

