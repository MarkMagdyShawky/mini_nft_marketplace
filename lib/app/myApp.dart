import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/routsManager.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Acme-Regular"),
      routes: RoutManager.PageRoutes,
      initialRoute: "Onboarding",
    );
  }
}
