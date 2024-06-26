import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../core/resources/colorManager.dart';

class BottomTabBar extends StatelessWidget {
  const BottomTabBar({super.key, required this.onPressedHome, required this.onPressedState});
  final VoidCallback onPressedHome;
  final VoidCallback onPressedState;

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;

    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          bottom: 0,
          child: Container(
            width: widthScreen,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(60), topLeft: Radius.circular(60)),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaY: 100, sigmaX: 100),
                child: Container(
                  decoration: BoxDecoration(
                    color: kPrimaryColor.withOpacity(0.3),
                  ),
                  child: Container(
                    height: 70,
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // move 2 home page
                        IconButton(
                            onPressed: onPressedHome,
                            icon: Icon(
                              Icons.house_outlined,
                              size: 29,
                              color: kFontColor1,
                            )),
                        // move 2 state page
                        IconButton(
                            onPressed: onPressedState,
                            icon: Icon(
                              Icons.bar_chart_outlined,
                              size: 29,
                              color: kFontColor1,
                            )),
                        Container(
                          width: 30,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.search_rounded,
                              size: 29,
                              color: kFontColor1,
                            )),
                        IconButton(
                            onPressed: () {Navigator.popAndPushNamed(context, "");
                            },
                            icon: Icon(
                              Icons.person_2_outlined,
                              size: 29,
                              color: kFontColor1,
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 10,
          child: Container(
            decoration: ShapeDecoration(
                color: Colors.white.withOpacity(0.7),
                shape: StarBorder.polygon(
                  sides: 6,
                  pointRounding: 0.5,
                )),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.add,
                  size: 35,
                  color: kFontColor1,
                )),
            width: 70,
            height: 70,
          ),
        ),
      ],
    );
  }
}
