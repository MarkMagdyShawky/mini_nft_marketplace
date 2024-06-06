import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:like_button/like_button.dart';
import 'package:mini_nft_marketplace/core/resources/MarkDrawer.dart';
import 'package:mini_nft_marketplace/core/resources/TextManager.dart';
import 'package:mini_nft_marketplace/core/resources/colorManager.dart';
import 'package:mini_nft_marketplace/core/resources/imageManager.dart';
import 'package:mini_nft_marketplace/core/resources/stringManagement.dart';
import 'package:mini_nft_marketplace/presentation/home/screens/homePart.dart';
import 'package:mini_nft_marketplace/presentation/home/widgets/customCategoryHomePage.dart';
import 'package:mini_nft_marketplace/presentation/home/widgets/customHomePageTitle.dart';
import 'package:mini_nft_marketplace/presentation/home/widgets/bottomTabBar.dart';
import 'package:mini_nft_marketplace/presentation/state/screens/statePage.dart';

import '../widgets/customCollectionHomePage.dart';
import '../widgets/customTopSellerHomePage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  List<Widget> bodyPart = [HomePart(), StatePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      // bottomNavigationBar:Container(child:  BottomTabBar() , height: 115,),
      // drawer: MarkDrawer(),
      // appBar: AppBar(
      //   iconTheme: IconThemeData(color: kFontColor1),
      //   toolbarHeight: 75,
      //   backgroundColor: kBackgroundColor2,
      //   elevation: 0,
      //   title: TextManagerBold(
      //     myText: StringManager.HomeTitle,
      //     FontSize: 25.5,
      //   ),
      //   centerTitle: true,
      // ),
      backgroundColor: kBackgroundColor2,
      body: SafeArea(
        child: Stack(
          children: [
            bodyPart[index],
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 115,
                child: BottomTabBar(
                  onPressedHome: () {
                    setState(() {
                      index = 0;
                    });
                  },
                  onPressedState: () {
                    setState(() {
                      index = 1;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
