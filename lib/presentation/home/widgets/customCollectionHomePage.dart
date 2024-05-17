import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

import '../../../core/resources/TextManager.dart';
import '../../../core/resources/imageManager.dart';

class CustomCollectionHomePage extends StatelessWidget {
  final String collectionCaption ;
  final String collectionImage;
  final String likesNumber;
  const CustomCollectionHomePage({super.key, required this.collectionCaption, required this.collectionImage, required this.likesNumber});

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(22),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: Colors.white.withOpacity(0.1),
              border: Border.all(
                  color: Colors.white.withOpacity(0.1), width: 0.5),
            ),
            padding:
            EdgeInsets.only(top: 10, left: 10, bottom:20 , right: 10),
            width: 165,
            height: 210,
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(22),
                  child: Image(
                    image: AssetImage(collectionImage),
                    width: 145,
                    height: 145,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    TextManagerNormal(myText: collectionCaption, FontSize: 17),
                    Row(
                      children: [  LikeButton(
                        size: 20,
                        isLiked: true,
                      ),
                        TextManagerThin(myText: likesNumber, FontSize: 14),
                      ],
                    )
                  ],)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
