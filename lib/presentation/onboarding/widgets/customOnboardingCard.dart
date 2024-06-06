import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/TextManager.dart';
import 'package:mini_nft_marketplace/core/resources/colorManager.dart';
import 'package:mini_nft_marketplace/core/resources/stringManagement.dart';

class CustomOnboardingCard extends StatelessWidget {
  const CustomOnboardingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaY: 7, sigmaX: 7),
          child: Container(
            decoration: BoxDecoration(
                color: kSecondaryColor.withOpacity(0.3),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white24,
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(0, 2),
                  )
                ]),
            width: 306,
            height: 200,
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  TextManagerNormal(
                    myText: StringManager.onboardingBoxTitle,
                    FontSize: 24,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextManagerThin(
                    myText: StringManager.onboardingBoxSubtitle,
                    FontSize: 13.5,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: kButtonColor ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                            sigmaX: 10, sigmaY: 10),
                        child: MaterialButton(
                          color:  kButtonColor.withOpacity(0.5)  ,

                          onPressed: () {
                            Navigator.pushNamed(context, "Home");
                          },
                          padding: EdgeInsets.symmetric(
                            horizontal: 50,
                            vertical: 12,
                          ),
                          child: Text(
                            StringManager.onboardingBtn,
                            style: TextStyle(
                                color: kFontColor1, fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
