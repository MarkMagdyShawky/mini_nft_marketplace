import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/imageManager.dart';

class CustomOnboardingImageBg extends StatelessWidget {
  const CustomOnboardingImageBg({super.key});

  @override
  Widget build(BuildContext context) {
    return  Image(
      image: AssetImage(ImageManager.OnboardingImage),
      height: double.infinity,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }
}
