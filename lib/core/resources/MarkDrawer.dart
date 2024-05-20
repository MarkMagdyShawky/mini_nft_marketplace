// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:flutter/material.dart';
import 'colorManager.dart';

class MarkDrawer extends StatelessWidget {
  const MarkDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shadowColor: kPrimaryColor,
      elevation: 3,
      semanticLabel: NativeRuntime.buildId,
      backgroundColor: kBackgroundColor2,
      child: ListView(
        children: <Widget>[
          DrawerHeader(
              child: Text(
            "Welcome",
            style: TextStyle(color: kFontColor1, fontSize: 20, fontWeight: FontWeight.bold),
          )),
          ListTile(
            leading: Icon(
              Icons.home,
              color: kFontColor1,
            ),
            title: Text(
              "Onboarding",
              style: TextStyle(color: kFontColor1, fontSize: 16, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.popAndPushNamed(context, "Onboarding");
            },
          ),
          ListTile(
            leading: Icon(
              Icons.home_work,
              color: kFontColor1,
            ),
            title: Text(
              "NFT Marketplace",
              style: TextStyle(color: kFontColor1, fontSize: 16, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.popAndPushNamed(context, "Home");

            },
          ),
          ListTile(
            leading: Icon(
              Icons.stacked_bar_chart,
              color: kFontColor1,
            ),
            title: Text(
              "State",
              style: TextStyle(color: kFontColor1, fontSize: 16, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.popAndPushNamed(context, "State");

            },
          )
        ],
      ),
    );
  }
}
