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

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: kBackgroundColor2,
        drawer: MarkDrawer(),
        appBar: AppBar(
          backgroundColor: kBackgroundColor2,
          toolbarHeight: 80,
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
          bottom: TabBar(

            tabs: [
              Tab(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.bar_chart_sharp,
                      color: kFontColor1,
                      size: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    TextManagerThin(myText: "Ranking", FontSize: 14),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.area_chart_sharp,
                      color: kFontColor1,
                      size: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    TextManagerThin(myText: "Activity", FontSize: 12),
                  ],
                ),
              ),
            ],
            indicatorColor: kBrightColor,
            dividerColor: kPrimaryColor.withOpacity(0.5),
            indicatorWeight: 5,
          ),
        ),
        body: SafeArea(
            child: Stack(
          children: [
            // for background
            StateImageBackground(),
            StateCardBackground(),
            ListView(
              children: [
                SizedBox(height: 30,),
                // 2 lists
                CustomDropMenu(),
                SizedBox(height: 15,),
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
      ),
    );
  }
}
