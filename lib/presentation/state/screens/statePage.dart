import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mini_nft_marketplace/core/resources/MarkDrawer.dart';
import 'package:mini_nft_marketplace/core/resources/colorManager.dart';
import 'package:mini_nft_marketplace/core/resources/stringManagement.dart';
import 'package:mini_nft_marketplace/presentation/state/widgets/StateImageBackground.dart';
import 'package:mini_nft_marketplace/presentation/state/widgets/customCardStatePage.dart';
import 'package:mini_nft_marketplace/presentation/state/widgets/customDropMenue.dart';
import 'package:mini_nft_marketplace/presentation/state/widgets/stateCardBackground.dart';

import '../../../core/resources/TextManager.dart';
import '../../../core/resources/imageManager.dart';

class StatePage extends StatelessWidget {
  const StatePage({super.key});

  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    int cardsLength = ImageManager.stateCardImages.length;

    return Scaffold(
      backgroundColor: kBackgroundColor2,
      drawer: MarkDrawer(),
      appBar: AppBar(
        backgroundColor: kBackgroundColor2,
        toolbarHeight: 60,
        title: TextManagerNormal(
            myText: StringManager.StatePagTitle, FontSize: 21),
        iconTheme: IconThemeData(color: kFontColor1),
        centerTitle: true,
        actions: [
          PopupMenuButton(
              color: kPrimaryColor.withOpacity(0.5),
              offset: Offset(6, 6),
              itemBuilder: (context) => [
                    PopupMenuItem(
                        child: TextManagerThin(
                            myText: StringManager.StatePageRanking,
                            FontSize: 12),
                        value: "Ranking"),
                    PopupMenuItem(
                        child: TextManagerThin(
                            myText: StringManager.StatePageActivity,
                            FontSize: 12),
                        value: "Activity")
                  ])
        ],
      ),
      body: SafeArea(
          child: Stack(
        children: [
          // for background
          StateImageBackground(),
          StateCardBackground(),
          ListView(
            children: [
              CustomDropMenu(),
              // Card
              Container(
                height: heightScreen,
                width: double.infinity,
                child: CustomCardStatePage(),
              )
            ],
          ),
          // 2 lists
        ],
      )),
    );
  }
}
