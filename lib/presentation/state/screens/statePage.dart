import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/MarkDrawer.dart';
import 'package:mini_nft_marketplace/core/resources/colorManager.dart';

import '../../../core/resources/TextManager.dart';

class StatePage extends StatelessWidget {
  const StatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor2,
      drawer: MarkDrawer(),
      appBar: AppBar(
        backgroundColor: kBackgroundColor2,
        toolbarHeight: 60,
        title: TextManagerNormal(myText: "State", FontSize: 21),
        iconTheme: IconThemeData(color: kFontColor1),
        centerTitle: true,
        actions: [
          TabBar(indicatorColor: kFontColor1,tabs: [
            Tab(
              icon: Icon(Icons.stacked_bar_chart),
              text: "Active",
            ),
            Tab(
              icon: Icon(Icons.stacked_bar_chart),
              text: "Active",

            ),
          ])
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [],
        ),
      ),
    );
  }
}
