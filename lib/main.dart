import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valorant_api/pages/home_page.dart';
void main() {
  runApp(const ProviderScope(child: MyApp()));
}

final themeProvider = StateProvider<ThemeData>((ref) {
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,
  );
});
final titleProvider = StateProvider<String>((ref) {
  return 'Valorant API';
});

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return MaterialApp(
      title: ref.watch(titleProvider),
      debugShowCheckedModeBanner: false,
      theme: ref.watch(themeProvider),
      home: const HomePage(),
    );
  }
}
