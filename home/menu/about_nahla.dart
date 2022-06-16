import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../navigationbar/cart.dart';
import '../navigationbar/track.dart';
import 'package:nahla/home/navigationbar/cart.dart';
import 'package:nahla/home/navigationbar/track.dart';
import 'package:nahla/home/navigationbar/wallet.dart';
import 'package:nahla/home/other_screens/search_store.dart';
import 'package:nahla/home/home_page.dart';
import 'navigation_drawer_widget.dart';

class aboutNahla extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Align(
          alignment: Alignment(-1.2, 0.28),
          child: Text(
            "About Nahla",
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      drawer: NavigationDrawerWidget(),
      body: Stack(
        children: [
          Container(
            child: Stack(
              fit: StackFit.expand,
              children: [
                Align(
                  alignment: Alignment(-2, 1.04),
                  child: Container(
                      width: 500,
                      height: 75,
                      child: Opacity(
                          opacity: 1,
                          child: Card(
                            color: Colors.white,
                            margin: const EdgeInsets.all(0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                              side: BorderSide(
                                  color: Color.fromARGB(255, 255, 184, 12)),
                            ),
                            elevation: 5,
                            child: Container(
                                margin: const EdgeInsets.all(10),
                                child: Stack(fit: StackFit.expand, children: [
                                  Align(
                                    alignment: Alignment(-0.5, -2),
                                    child: IconButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    StoresScreen()));
                                      },
                                      icon: Icon(
                                        FontAwesomeIcons.search,
                                        color: Colors.black,
                                        size: 23,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment(0.5, -2),
                                    child: IconButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    TrackScreen()));
                                      },
                                      icon: Icon(
                                        FontAwesomeIcons.locationDot,
                                        color: Colors.black,
                                        size: 23,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment(0.95, -2),
                                    child: IconButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    WalletScreen()));
                                      },
                                      icon: Icon(
                                        FontAwesomeIcons.wallet,
                                        color: Colors.black,
                                        size: 23,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment(-0.95, -2),
                                    child: IconButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    CartScreen()));
                                      },
                                      icon: Icon(
                                        FontAwesomeIcons.shoppingCart,
                                        color: Colors.black,
                                        size: 23,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment(0, -2),
                                    child: IconButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Home_Page()));
                                      },
                                      icon: Icon(
                                        FontAwesomeIcons.house,
                                        color: Colors.black,
                                        size: 25,
                                      ),
                                    ),
                                  ),
                                ])),
                          ))),
                ),
                Align(alignment: Alignment(0, -0.65), child: manyScreenCard()),
                Align(
                  alignment: const Alignment(-0.05, -0.80),
                  child: buildBigTitle(),
                ),
                Align(
                    alignment: const Alignment(-0.02, -0.65),
                    child:
                        icon(iconPath: "assets/icons_svg/delivery_icon.svg")),
                Align(
                    alignment: const Alignment(0.0, -0.50),
                    child: buildTitle(title: "24 Houres")),
                Align(
                    alignment: const Alignment(0.0, -0.40),
                    child:
                        description(description: "Nahla Delivery works 24/7")),
                Align(
                    alignment: const Alignment(-0.02, -0.25),
                    child: icon(iconPath: "assets/icons_svg/money_icon.svg")),
                Align(
                    alignment: const Alignment(0.0, -0.10),
                    child: buildTitle(title: "1000 DA")),
                Align(
                    alignment: const Alignment(0.0, 0.02),
                    child: description(
                        description:
                            "Minimum amount needed is at least 1000DA to place an order")),
                Align(
                    alignment: const Alignment(-0.02, 0.2),
                    child: icon(
                        iconPath: "assets/icons_svg/availability_icon.svg")),
                Align(
                    alignment: const Alignment(0.0, 0.35),
                    child: buildTitle(title: "Availabe")),
                Align(
                    alignment: const Alignment(0.0, 0.47),
                    child: description(
                        description:
                            "Nahla is always available for your service")),
              ],
            ),
          ),
        ],
      ));
  Widget buildBigTitle() => const Text(
        'About Nahla',
        style: TextStyle(
          fontSize: 35,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      );
  Widget buildTitle({required String title}) => Text(
        title,
        style: const TextStyle(
            fontSize: 25,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'crimson'),
        textAlign: TextAlign.center,
      );

  Widget description({required String description}) => Text(
        description,
        style: const TextStyle(
            fontSize: 20,
            color: Color.fromRGBO(105, 101, 101, 1),
            fontWeight: FontWeight.bold,
            fontFamily: ''),
        textAlign: TextAlign.center,
      );

  Widget buildBackground() => ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Container(
        color: Colors.white,
      ));

  Widget icon({required String iconPath}) => SizedBox(
        height: 50,
        width: 50,
        child: SvgPicture.asset(iconPath),
      );
}
