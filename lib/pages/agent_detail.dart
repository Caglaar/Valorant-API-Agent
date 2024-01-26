import 'package:flutter/material.dart';
import 'package:valorant_api/models/agent_model.dart';
import 'package:valorant_api/pages/agent_cached_image.dart';
import 'package:valorant_api/pages/agent_detail_abilitys.dart';
import 'package:valorant_api/pages/agent_detail_appbar.dart';

class AgentDetailPage extends StatelessWidget {
  const AgentDetailPage({super.key,required this.agent});
  final AgentModel agent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(builder: (context, constraints) {
      return CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AgentDetailAppBar(
                      agent: agent,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(25.0),
                      child: Center(
                        child: Text(
                          "#  DESCRIPTION  #",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,)
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 25, right: 25, bottom: 25),
                      child: Text(
                        agent.description,
                        style: const TextStyle(fontSize: 15),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Center(
                        child: Text(
                          "#  ABILITIES  #",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    )
                  ],
                ),
                Hero(
                  tag: agent.uuid,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 200),
                    child: AgentCachedNetworkImage(
                      agent: agent,
                      sizeImage: 600 / 2.1,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: IconButton(
                    tooltip: 'Go back',
                    icon: const Icon(Icons.arrow_back_ios,color: Colors.black,),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )
                )
              ],
            ),
          ),
          AbilityCard(agent: agent),
        ],
      );
    }));
  }

}