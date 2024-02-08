
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:valorant_api/view_models/agent_provider.dart';


class SetupProviders {
  static List<SingleChildWidget> get providers => [
        ChangeNotifierProvider(
          create: (context) => AgentProvider()),
      ];
}
