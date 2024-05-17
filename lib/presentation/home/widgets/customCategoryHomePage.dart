import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/TextManager.dart';

class CustomCategoryHomePage extends StatelessWidget {
  final String imageName;
  final String caption;
  const CustomCategoryHomePage({super.key, required this.caption, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image(
            image: AssetImage(imageName),
            height: 167,
            width: 252.26,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 0,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaY: 7, sigmaX: 7),
              child: Container(
                alignment: Alignment.center,
                height: 45.06,
                width: 252.26,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0),
                        Colors.black.withOpacity(0.3),
                      ],
                    )),
                child: TextManagerNormal(myText:caption,FontSize: 20,),
              ),
            ),
          ),
        )
      ],
    );
  }
}
