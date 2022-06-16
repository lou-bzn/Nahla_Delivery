import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../navigationbar/cart.dart';
import '../navigationbar/track.dart';
import 'package:nahla/home/navigationbar/cart.dart';
import 'package:nahla/home/navigationbar/track.dart';
import 'package:nahla/home/navigationbar/wallet.dart';
import 'package:nahla/home/other_screens/search_store.dart';
import 'package:nahla/home/home_page.dart';
import 'navigation_drawer_widget.dart';

class yourAdress extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Align(
          alignment: Alignment(-1.2, 0.28),
          child: Text(
            "Your Adress",
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
                  alignment: Alignment(0.9, -0.9),
                  child: textFieldAdress(hintText: 'First Name'),
                ),
                Align(
                  alignment: Alignment(0.75, -0.9),
                  child: icons(icon: Icons.person),
                ),
                Align(
                  alignment: Alignment(0.9, -0.75),
                  child: textFieldAdress(hintText: 'Last Name'),
                ),
                Align(
                  alignment: Alignment(0.75, -0.75),
                  child: icons(icon: Icons.person),
                ),
                Align(
                  alignment: Alignment(0.9, -0.6),
                  child: textFieldAdress(hintText: 'Email'),
                ),
                Align(
                  alignment: Alignment(0.75, -0.6),
                  child: icons(icon: Icons.email),
                ),
                Align(
                  alignment: Alignment(0.9, -0.45),
                  child: textFieldAdress(hintText: 'Mobile Number'),
                ),
                Align(
                  alignment: Alignment(0.75, -0.45),
                  child: icons(icon: Icons.phone),
                ),
                Align(
                  alignment: Alignment(0.9, -0.3),
                  child: textFieldAdress(hintText: 'ALternative Number'),
                ),
                Align(
                  alignment: Alignment(0.75, -0.3),
                  child: icons(icon: Icons.phone),
                ),
                Align(
                  alignment: Alignment(0.9, -0.15),
                  child: textFieldAdress(hintText: 'Flat No/Landmark'),
                ),
                Align(
                  alignment: Alignment(0.75, -0.15),
                  child: icons(icon: FontAwesomeIcons.locationDot),
                ),
                Align(
                  alignment: Alignment(0.9, 0.0),
                  child: textFieldAdress(hintText: 'Location'),
                ),
                Align(
                  alignment: Alignment(0.75, 0),
                  child: icons(icon: FontAwesomeIcons.mapLocationDot),
                ),
                Align(
                  alignment: Alignment(0, 0.2),
                  child: Container(
                    height: 40,
                    width: 280,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(250, 184, 12, 1),
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          side: BorderSide(color: Color(0XFAB803)),
                        ),
                        padding: const EdgeInsets.all(10.0),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'SAVE',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ));
  Widget textFieldAdress({required String hintText}) => Expanded(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              width: 300,
              height: 35,
              child: TextField(
                cursorColor: Color.fromARGB(255, 250, 184, 12),
                cursorWidth: 2,
                decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.normal),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: Color.fromARGB(255, 250, 184, 12),
                    width: 1,
                  )),
                ),
              ))
        ],
      ));
}

Widget icons({required IconData icon}) =>
    Icon(icon, size: 25, color: Color.fromARGB(255, 250, 184, 12));
