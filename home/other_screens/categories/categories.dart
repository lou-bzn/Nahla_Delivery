import 'package:flutter/material.dart';
import 'package:nahla/common_widgets/buttonCategories.dart';
import 'package:nahla/home/other_screens/categories/beverages.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Color.fromARGB(255, 254, 240, 230),
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Align(
            alignment: Alignment(-1.2, 0.28),
            child: Text(
              "Categories",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: Stack(fit: StackFit.expand, children: [
          Align(
              alignment: const Alignment(-0.85, -0.9),
              child: title(Title: "CATEGORIES")),
          Align(
              alignment: const Alignment(-0.85, -0.75),
              child: CategorieButtonWidget(
                iconPath: "assets/icons_svg/beverages_icon.svg",
                categorieName: "Beverages      ",
                onClicked: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Beverages()));
                },
              )),
          Align(
              alignment: const Alignment(0.85, -0.75),
              child: CategorieButtonWidget(
                iconPath: "assets/icons_svg/bakery_icon.svg",
                categorieName: "Bread/Bakery",
                onClicked: () {},
              )),
          Align(
              alignment: const Alignment(-0.85, -0.60),
              child: CategorieButtonWidget(
                iconPath: "assets/icons_svg/canned_food_icon.svg",
                categorieName: "Canned           ",
                onClicked: () {},
              )),
          Align(
              alignment: const Alignment(0.85, -0.60),
              child: CategorieButtonWidget(
                iconPath: "assets/icons_svg/dairy_icon.svg",
                categorieName: "Dairy               ",
                onClicked: () {},
              )),
          Align(
              alignment: const Alignment(-0.85, -0.45),
              child: CategorieButtonWidget(
                iconPath: "assets/icons_svg/dry_baking_goods_icon.svg",
                categorieName: "Baking Good ",
                onClicked: () {},
              )),
          Align(
              alignment: const Alignment(0.85, -0.45),
              child: CategorieButtonWidget(
                iconPath: "assets/icons_svg/frozen_food_icon.svg",
                categorieName: "Frozen Food   ",
                onClicked: () {},
              )),
          Align(
              alignment: const Alignment(-0.85, -0.3),
              child: CategorieButtonWidget(
                iconPath: "assets/icons_svg/meat_icon.svg",
                categorieName: "Meat               ",
                onClicked: () {},
              )),
          Align(
              alignment: const Alignment(0.85, -0.3),
              child: CategorieButtonWidget(
                iconPath: "assets/icons_svg/produce_icon.svg",
                categorieName: "Produce          ",
                onClicked: () {},
              )),
          Align(
              alignment: const Alignment(-0.85, -0.15),
              child: CategorieButtonWidget(
                iconPath: "assets/icons_svg/cleaners_icon.svg",
                categorieName: "Cleaners         ",
                onClicked: () {},
              )),
          Align(
              alignment: const Alignment(0.85, -0.15),
              child: CategorieButtonWidget(
                iconPath: "assets/icons_svg/paper_goods_icon.svg",
                categorieName: "Paper Good    ",
                onClicked: () {},
              )),
          Align(
              alignment: const Alignment(-0.85, 0),
              child: CategorieButtonWidget(
                iconPath: "assets/icons_svg/personal_care_icon.svg",
                categorieName: "Personal Care",
                onClicked: () {},
              )),
        ]),
      );

  // ignore: non_constant_identifier_names
  Widget title({required String Title}) => Text(
        Title,
        style: const TextStyle(
            fontSize: 20,
            color: Color.fromARGB(255, 0, 0, 1),
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto'),
        textAlign: TextAlign.left,
      );
}
