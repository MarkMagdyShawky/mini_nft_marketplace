import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/TextManager.dart';
import 'package:mini_nft_marketplace/core/resources/stringManagement.dart';

class CustomOnboardingTitle extends StatelessWidget {
  const CustomOnboardingTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 50),
      child: TextManagerBold(
        myText: StringManager.onboardingTitle,
        FontSize: 37,
      ),
    );
  }
}
