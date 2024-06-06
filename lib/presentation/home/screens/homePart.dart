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
import 'package:mini_nft_marketplace/presentation/home/widgets/customCategoryHomePage.dart';
import 'package:mini_nft_marketplace/presentation/home/widgets/customHomePageTitle.dart';
import 'package:mini_nft_marketplace/presentation/home/widgets/bottomTabBar.dart';

import '../widgets/customCollectionHomePage.dart';
import '../widgets/customTopSellerHomePage.dart';

class HomePart extends StatelessWidget {
  const HomePart({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:
      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            alignment: Alignment.center,
            child: TextManagerBold(myText: StringManager.HomeTitle, FontSize: 25.5,),
          ),
          // category part
          Container(
            height: 167,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: StringManager.CategoriesCaption.length,
              itemBuilder: (BuildContext context, int index) {
                return CustomCategoryHomePage(
                  caption: StringManager.CategoriesCaption[index],
                  imageName: ImageManager.categoryImages[index],
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Container(
                  width: 10,
                  color: kBackgroundColor2,
                );
              },
            ),
          ),
          SizedBox(
            height: 25,
          ),
          // CollectionTitle
          Container(
            alignment: Alignment.topLeft,
            child: TextManagerNormal(
                myText: StringManager.HomepageCollectionTitle,
                FontSize: 18),
          ),
          SizedBox(
            height: 25,
          ),
          // collections
          SizedBox(
            width: double.infinity,
            height: 210,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: StringManager.CollectionsCaption.length,
              itemBuilder: (BuildContext context, int index) {
                return CustomCollectionHomePage(
                  collectionCaption:
                  StringManager.CollectionsCaption[index],
                  collectionImage: ImageManager.collectionsImages[index],
                  likesNumber:
                  StringManager.CollectionLikesNumbers[index],
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Container(
                  width: 10,
                  color: kBackgroundColor2,
                );
              },
            ),
          ),
          SizedBox(
            height: 25,
          ),
          // Top seller title
          Container(
            alignment: Alignment.topLeft,
            child: TextManagerNormal(
                myText: StringManager.HomepageTopSellerTitle,
                FontSize: 18),
          ),
          SizedBox(
            height: 25,
          ),
          // top seller
          SizedBox(
            width: double.infinity,
            height: 270,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: StringManager.TopSellerSubtitles.length,
              itemBuilder: (BuildContext context, int index) {
                return CustomTopSellerHomePage(
                  topSellerSubtitle:
                  StringManager.TopSellerSubtitles[index],
                  topSellerTitle: StringManager.TopSellerTitles[index],
                  topSellerEthereum:
                  StringManager.TopSellerEthereum[index],
                  topSellerImage: ImageManager.topSellerImages[index],
                  likesNumber: StringManager.TopSellerLikesNumbers[index],
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Container(
                  width: 10,
                  color: kBackgroundColor2,
                );
              },
            ),
          ),
          SizedBox(height: 104,)
        ],
      ),
    );
  }
}
