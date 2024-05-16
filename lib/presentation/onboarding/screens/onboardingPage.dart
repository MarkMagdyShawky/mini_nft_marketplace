import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mini_nft_marketplace/core/resources/TextManager.dart';
import 'package:mini_nft_marketplace/core/resources/colorManager.dart';
import 'package:mini_nft_marketplace/core/resources/imageManager.dart';
import 'package:mini_nft_marketplace/core/resources/stringManagement.dart';
import 'package:mini_nft_marketplace/presentation/onboarding/widgets/customOnboardingCard.dart';
import 'package:mini_nft_marketplace/presentation/onboarding/widgets/customOnboardingImageBg.dart';
import 'package:mini_nft_marketplace/presentation/onboarding/widgets/customOnboardingTitle.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Image Background
            CustomOnboardingImageBg(),
            Column(
              children: [
                // Main Title
                CustomOnboardingTitle(),
                SizedBox(
                  height: 300,
                ),
                // Box
                CustomOnboardingCard(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
