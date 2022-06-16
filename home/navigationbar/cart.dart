import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nahla/home/other_screens/search_store.dart';
import 'track.dart';
import 'wallet.dart';
import 'package:nahla/home/home_page.dart';
import 'package:nahla/home/other_screens/vivamall_products.dart';
import 'package:nahla/home/menu/navigation_drawer_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Align(
          alignment: Alignment(-1.25, 0.28),
          child: Text(
            "Your Cart",
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      drawer: NavigationDrawerWidget(),
      body: Stack(
        children: [
          Stack(
            fit: StackFit.expand,
            children: [
              Align(
                alignment: const Alignment(-2, 1.04),
                child: SizedBox(
                    width: 500,
                    height: 75,
                    child: Opacity(
                        opacity: 1,
                        child: Card(
                          color: Colors.white,
                          margin: const EdgeInsets.all(0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                            side: const BorderSide(
                                color: Color.fromARGB(255, 255, 184, 12)),
                          ),
                          elevation: 5,
                          child: Container(
                              margin: const EdgeInsets.all(10),
                              child: Stack(fit: StackFit.expand, children: [
                                Align(
                                  alignment: const Alignment(-0.5, -2),
                                  child: IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  StoresScreen()));
                                    },
                                    icon: const Icon(
                                      FontAwesomeIcons.search,
                                      color: Colors.black,
                                      size: 23,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const Alignment(0.5, -2),
                                  child: IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  TrackScreen()));
                                    },
                                    icon: const Icon(
                                      FontAwesomeIcons.locationDot,
                                      color: Colors.black,
                                      size: 23,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const Alignment(0.95, -2),
                                  child: IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  WalletScreen()));
                                    },
                                    icon: const Icon(
                                      FontAwesomeIcons.wallet,
                                      color: Colors.black,
                                      size: 23,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const Alignment(-0.95, -2),
                                  child: IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  CartScreen()));
                                    },
                                    icon: const Icon(
                                      FontAwesomeIcons.shoppingCart,
                                      color: Colors.black,
                                      size: 23,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const Alignment(0, -2),
                                  child: IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Home_Page()));
                                    },
                                    icon: const Icon(
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
                alignment: const Alignment(0, 0.35),
                child: SizedBox(
                  height: 40,
                  width: 280,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromRGBO(250, 184, 12, 1),
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        side: const BorderSide(color: Color(0x00fab803)),
                      ),
                      padding: const EdgeInsets.all(10.0),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const VivaMallProducts()));
                    },
                    child: const Text(
                      'ADD SOME ITEM',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const Align(
                alignment: Alignment(0, 0.15),
                child: Text(
                  'I am empty ',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              const Align(
                alignment: Alignment(0, 0.225),
                child: Text(
                  'your cart is empty',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
              ),
              Align(
                  alignment: Alignment(0, -0.1),
                  child: SizedBox(
                    height: 175,
                    width: 450,
                    child: Image.asset('assets/empty_cart.png'),
                  ))
            ],
          ),
        ],
      ));
}

Widget manyScreenCard() => SizedBox(
      width: 350,
      height: 570,
      child: Opacity(
        opacity: 0.5,
        child: Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
              side: const BorderSide(color: Color.fromARGB(255, 255, 184, 12))),
          elevation: 5,
        ),
      ),
    );
