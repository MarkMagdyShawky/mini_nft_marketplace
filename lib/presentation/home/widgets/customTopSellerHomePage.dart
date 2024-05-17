import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:mini_nft_marketplace/core/resources/TextManager.dart';
import 'package:mini_nft_marketplace/core/resources/imageManager.dart';

class CustomTopSellerHomePage extends StatelessWidget {
  final String topSellerTitle;
  final String topSellerSubtitle;
  final String topSellerEthereum;

  final String topSellerImage;
  final String likesNumber;

  const CustomTopSellerHomePage(
      {super.key,
      required this.topSellerEthereum,
      required this.topSellerImage,
      required this.likesNumber,
      required this.topSellerTitle,
      required this.topSellerSubtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(22),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: Colors.white.withOpacity(0.1),
              border:
                  Border.all(color: Colors.white.withOpacity(0.1), width: 0.5),
            ),
            padding: EdgeInsets.only(top: 10, left: 10, bottom: 20, right: 10),
            width: 165,
            height: 270,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(22),
                  child: Image(
                    image: AssetImage(topSellerImage),
                    width: 145,
                    height: 145,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextManagerNormal(myText: topSellerTitle, FontSize: 18),
                SizedBox(
                  height: 7,
                ),
                TextManagerThin(myText: topSellerSubtitle, FontSize: 12),
                SizedBox(
                  height: 7,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image(
                          image: AssetImage(ImageManager.ethereumHomePage),
                          width: 20,
                          height: 20,
                        ),
                        TextManagerNormal(myText:topSellerEthereum, FontSize: 17),

                      ],
                    ),
                    Row(
                      children: [
                        LikeButton(
                          size: 20,
                        ),
                        TextManagerThin(myText: likesNumber, FontSize: 14),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
