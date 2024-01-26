import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:valorant_api/models/agent_model.dart';

class AgentCachedNetworkImage extends StatelessWidget {
  const AgentCachedNetworkImage({
    super.key,
    required this.agent,
    required this.sizeImage,
  });

  final AgentModel agent;
  final double sizeImage;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      alignment: Alignment.bottomRight,
      imageUrl: agent.fullPortrait ?? "",
      progressIndicatorBuilder: (context, url, downloadProgress) =>
          const  Center(
                  child: CircularProgressIndicator(
                  color: Colors.amber,
              )),
      imageBuilder: (context, imageProvider) {
        return Align(
          alignment: Alignment.bottomRight,
          child: Container(
            height: sizeImage,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
    );
  }
}