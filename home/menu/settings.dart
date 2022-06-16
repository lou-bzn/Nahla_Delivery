import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nahla/common_widgets/button_widget.dart';
import 'package:nahla/common_widgets/button_widget_two.dart';
import 'package:nahla/home/menu/profile.dart';
import '../navigationbar/cart.dart';
import '../navigationbar/track.dart';
import 'package:nahla/home/navigationbar/cart.dart';
import 'package:nahla/home/navigationbar/track.dart';
import 'package:nahla/home/navigationbar/wallet.dart';
import 'package:nahla/home/other_screens/search_store.dart';
import 'package:nahla/home/home_page.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Align(
          alignment: Alignment(-1.2, 0.28),
          child: Text(
            "Settings",
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Stack(
        children: [
          Stack(
            fit: StackFit.expand,
            children: [
              Align(
                  alignment: const Alignment(0, -0.65),
                  child: manyScreenCard()),
              Align(
                  alignment: const Alignment(0, -1),
                  child: ButtonWidget(
                      icon: FontAwesomeIcons.key,
                      text: 'Change Passord          ',
                      onClicked: () {})),
              Align(
                  alignment: const Alignment(0, -0.835),
                  child: ButtonWidgetTwo(
                      icon: FontAwesomeIcons.circleInfo,
                      text: 'About                             ',
                      onClicked: () {})),
              Align(
                  alignment: const Alignment(0, -0.67),
                  child: ButtonWidgetTwo(
                      icon: Icons.person,
                      text: 'Profile                             ',
                      onClicked: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Profile()));
                      })),
              Align(
                  alignment: const Alignment(0, -0.505),
                  child: ButtonWidgetTwo(
                      icon: FontAwesomeIcons.sackDollar,
                      text: 'Payment Settings        ',
                      onClicked: () {})),
              Align(
                  alignment: const Alignment(0, -0.34),
                  child: ButtonWidgetTwo(
                      icon: FontAwesomeIcons.fileLines,
                      text: 'Terms and Conditions',
                      onClicked: () {})),
            ],
          ),
        ],
      ));
}
