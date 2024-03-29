
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:valorant_api/view_models/agent_provider.dart';
import 'package:valorant_api/view_models/bottom_nav_provider.dart';
import 'package:valorant_api/view_models/maps_provider.dart';
import 'package:valorant_api/view_models/wapons_provider.dart';


class SetupProviders {
  static List<SingleChildWidget> get providers => [
        ChangeNotifierProvider(
          create: (context) => AgentProvider()),
        ChangeNotifierProvider(
          create: (context) => BottomNavigationBarProvider()),
        ChangeNotifierProvider(
          create: (context) => MapsProvider()),
        ChangeNotifierProvider(
          create: (context) => WeaponsProvider()),
          
      ];
  
}
