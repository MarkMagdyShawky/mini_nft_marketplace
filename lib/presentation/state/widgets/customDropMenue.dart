import 'package:flutter/material.dart';

import '../../../core/resources/TextManager.dart';
import '../../../core/resources/colorManager.dart';

class CustomDropMenu extends StatelessWidget {
  const CustomDropMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25 , vertical: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border:
                Border.all(color: kPrimaryColor.withOpacity(0.4)),
                color: kPrimaryColor.withOpacity(0.1)),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                hint: Row(
                  children: [
                    Icon(Icons.category_outlined, color: kFontColor1),
                    SizedBox(width: 8),
                    Text("Category",
                        style: TextStyle(color: kFontColor1, fontSize: 15)),
                  ],
                ),
                items: [
                  DropdownMenuItem(
                      child: TextManagerThin(
                          myText: "Category1", FontSize: 10),
                      value: "Category1"),
                  DropdownMenuItem(
                      child: TextManagerThin(
                          myText: "Category2", FontSize: 10),
                      value: "Category2"),
                  DropdownMenuItem(
                      child: TextManagerThin(
                          myText: "Category3", FontSize: 10),
                      value: "Category3"),
                ],
                onChanged: (String? value) {},
                dropdownColor: kPrimaryColor,
                borderRadius: BorderRadius.circular(30),
                isDense: true,
              ),
            ),
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 25 , vertical: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border:
                Border.all(color: kPrimaryColor.withOpacity(0.4)),
                color: kPrimaryColor.withOpacity(0.1)),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                hint: Row(
                  children: [
                    Icon(Icons.link, color: kFontColor1),
                    SizedBox(width: 8),
                    Text("All Chains",
                        style: TextStyle(color: kFontColor1 , fontSize: 15)),
                  ],
                ),
                items: [
                  DropdownMenuItem(
                      child: TextManagerThin(
                          myText: "Category1", FontSize: 10),
                      value: "Category1"),
                  DropdownMenuItem(
                      child: TextManagerThin(
                          myText: "Category2", FontSize: 10),
                      value: "Category2"),
                  DropdownMenuItem(
                      child: TextManagerThin(
                          myText: "Category3", FontSize: 10),
                      value: "Category3"),
                ],
                onChanged: (String? value) {},
                dropdownColor: kPrimaryColor,
                borderRadius: BorderRadius.circular(30),
                isDense: true,

              ),
            ),
          ),
        ],
      ),
    );
  }
}
