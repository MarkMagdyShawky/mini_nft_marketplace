import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/TextManager.dart';
import 'package:mini_nft_marketplace/core/resources/stringManagement.dart';

class CustomHomePageTitle extends StatelessWidget {
  const CustomHomePageTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      alignment: Alignment.center,
      child: TextManagerBold(
        myText: StringManager.HomeTitle,
        FontSize: 25.5,
      ),
    );
  }
}
