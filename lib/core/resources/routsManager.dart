
import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/presentation/home/screens/homePage.dart';
import 'package:mini_nft_marketplace/presentation/onboarding/screens/onboardingPage.dart';
import 'package:mini_nft_marketplace/presentation/state/screens/statePage.dart';

class RoutManager {

 static Map<String, WidgetBuilder> PageRoutes = {
    "Onboarding": (context) => OnboardingPage(),
    "Home": (context) => HomePage(),
    "State": (context) => StatePage(),
  } ;
}
