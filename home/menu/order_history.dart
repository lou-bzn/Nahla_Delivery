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

class OrderHistory extends StatelessWidget {
  const OrderHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Align(
          alignment: Alignment(-1.2, 0.28),
          child: Text(
            "Favourites",
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
                Align(
                    alignment: const Alignment(0, -0.65),
                    child: manyScreenCard()),
                const Align(
                  alignment: Alignment(0, 0),
                  child: Text(
                    'No Orders available!',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ],
      ));
}
