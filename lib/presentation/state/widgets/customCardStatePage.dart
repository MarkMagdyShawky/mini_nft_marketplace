import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/resources/TextManager.dart';
import '../../../core/resources/colorManager.dart';
import '../../../core/resources/imageManager.dart';

class CustomCardStatePage extends StatelessWidget {
  final String index;
  final String cardImage;
  final String cardTitle;
  final String cardSubtitle;
  final String price;
  final String percent;
  const CustomCardStatePage({super.key, required this.index, required this.cardImage, required this.cardTitle, required this.cardSubtitle, required this.price, required this.percent});

  @override
  Widget build(BuildContext context) {
    return   Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      width: double.infinity,
      height: 600,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(22),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: kPrimaryColor.withOpacity(0.2),
                border: Border.all(
                    color: Colors.white.withOpacity(0.1), width: 0.5),
              ),
              child: Container(
                padding:
                EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Left ... num - image - 2 txt
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // num & image
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextManagerNormal(myText: index, FontSize: 18),
                            SizedBox(
                              width: 7,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image(
                                image:
                                AssetImage(cardImage),
                                width: 60,
                                height: 60,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 14,
                        ),
                        // 2 texts
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextManagerNormal(
                                myText: cardTitle, FontSize: 20),
                            SizedBox(
                              height:7,
                            ),
                            Text( cardSubtitle , style: TextStyle(fontSize: 13 , color: kFontColor1.withOpacity(0.5) , fontFamily: "Montserrat-ExtraLight" , fontWeight: FontWeight.w600),),

                          ],
                        )
                      ],
                    ),
                    //   Right .... icon - 2 txt
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Image(
                              image: AssetImage(ImageManager.ethereumHomePage),
                              width: 20,
                              height: 20,
                            ),
                            TextManagerNormal(myText:price, FontSize: 17),
                          ],
                        ),
                        SizedBox(height: 7,),
                        Text(percent , style: TextStyle(fontSize: 13 , color: Colors.green , fontFamily: "Montserrat-ExtraLight" , fontWeight: FontWeight.w600),),
                      ],
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
