import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/colorManager.dart';

class TextManagerBold extends StatelessWidget {
  final String myText;
  final double FontSize;

  const TextManagerBold(
      {super.key, required this.myText, required this.FontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      "$myText",
      style: TextStyle(
          fontSize: FontSize, fontWeight: FontWeight.bold, color: kFontColor1),
      textAlign: TextAlign.left,
    );
  }
}

class TextManagerNormal extends StatelessWidget {
  final String myText;
  final double FontSize;

  const TextManagerNormal(
      {super.key, required this.myText, required this.FontSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "$myText",
        style: TextStyle(fontSize: FontSize, color: kFontColor1),
      ),
    );
  }
}

class TextManagerThin extends StatelessWidget {
  final String myText;
  final double FontSize;

  const TextManagerThin(
      {super.key, required this.myText, required this.FontSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "$myText",
        style: TextStyle(
            fontSize: FontSize,
            color: kFontColor1,
            fontFamily: "Montserrat-ExtraLight" , fontWeight: FontWeight.w600),
        textAlign: TextAlign.center,
      ),
    );
  }
}
