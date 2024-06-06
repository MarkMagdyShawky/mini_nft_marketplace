import 'dart:ui';

import 'package:flutter/cupertino.dart';

import '../../../core/resources/colorManager.dart';

class StateCardBackground extends StatelessWidget {
  const StateCardBackground({super.key});

  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;

    return Container(
      width: double.infinity,
      height: heightScreen,
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaY: 100, sigmaX: 150),
          child: Container(
            alignment: Alignment.center,
            color: kBackgroundColor2.withOpacity(0.4),
          ),
        ),
      ),
    );
  }
}
