import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/MarkDrawer.dart';
import 'package:mini_nft_marketplace/core/resources/colorManager.dart';
import 'package:mini_nft_marketplace/core/resources/stringManagement.dart';
import 'package:mini_nft_marketplace/presentation/state/widgets/StateImageBackground.dart';
import 'package:mini_nft_marketplace/presentation/state/widgets/customCardStatePage.dart';
import 'package:mini_nft_marketplace/presentation/state/widgets/stateCardBackground.dart';

import '../../../core/resources/TextManager.dart';
import '../../../core/resources/imageManager.dart';
import 'customSingleCard.dart';

class CustomCardStatePage extends StatelessWidget {


  const CustomCardStatePage(
      {super.key,});

  @override
  Widget build(BuildContext context) {
    int cardsLength = ImageManager.stateCardImages.length;

    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 12),
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(22),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
          child: Container(
            padding: EdgeInsets.only( bottom: 85),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: kPrimaryColor.withOpacity(0.2),
                border: Border.all(
                    color: kPrimaryColor.withOpacity(0.6), width: 1),
              ),
              child: ListView.separated(
                itemCount: cardsLength,
                itemBuilder: (context, index) => CustomSingleCard(
                    index: "${index + 1}",
                    cardImage: ImageManager.stateCardImages[index],
                    cardTitle: StringManager.stateCardTitles[index],
                    cardSubtitle: StringManager.stateCardSubtitle,
                    price: StringManager.stateCardEthereum[index],
                    percent: StringManager.stateCardEthereumPercent[index]),
                separatorBuilder: (BuildContext context, int index) => SizedBox(height: 0,),


              ),
          ),
        ),
      ),
    );
  }
}
