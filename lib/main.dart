import 'package:flutter/material.dart';
import 'package:valorant_api/pages/home_page.dart';
import 'package:provider/provider.dart';
import 'package:valorant_api/setup_providers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:SetupProviders.providers,
      child: MaterialApp(
          title: "Valorant API",
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blueGrey),
          ),
          home: const HomePage(),
        ),
    );
  }
}
