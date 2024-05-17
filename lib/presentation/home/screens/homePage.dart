import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mini_nft_marketplace/core/resources/TextManager.dart';
import 'package:mini_nft_marketplace/core/resources/colorManager.dart';
import 'package:mini_nft_marketplace/core/resources/imageManager.dart';
import 'package:mini_nft_marketplace/core/resources/stringManagement.dart';
import 'package:mini_nft_marketplace/presentation/home/widgets/customCategoryHomePage.dart';
import 'package:mini_nft_marketplace/presentation/home/widgets/customHomePageTitle.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75,
        backgroundColor: kBackgroundColor2,
        elevation: 0,
        title: TextManagerBold(
          myText: StringManager.HomeTitle,
          FontSize: 25.5,
        ),
        centerTitle: true,
      ),
      backgroundColor: kBackgroundColor2,
      body: SafeArea(
        child: Column(
          children: [
            // category part
            Container(
              height: 167,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: StringManager.CategoriesCaption.length,
                itemBuilder: (BuildContext context, int index) {
                  return CustomCategoryHomePage(
                    caption: StringManager.CategoriesCaption[index],
                    imageName:ImageManager.categoryImages[index],
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 10,
                    color: kBackgroundColor2,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
