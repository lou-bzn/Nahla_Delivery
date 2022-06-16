import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'navigationbar/cart.dart';
import 'navigationbar/track.dart';
import 'navigationbar/wallet.dart';
import 'other_screens/vivamall_products.dart';
import 'package:nahla/location/welcome_location.dart';
import 'package:nahla/home/other_screens/search_store.dart';
import 'package:nahla/home/menu/navigation_drawer_widget.dart';
import 'package:nahla/product/product_item.dart';
import 'package:nahla/product/product_item_widget.dart';

late final GroceryItem product1 = NewArrivals[0];
late final GroceryItem product2 = NewArrivals[1];
late final GroceryItem product3 = NewArrivals[2];
late final GroceryItem product4 = NewArrivals[3];

@override
// ignore: camel_case_types
class Home_Page extends StatelessWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Align(
            alignment: Alignment(-1.5, 0.28),
            child: Text(
              "",
              style: TextStyle(
                  fontSize: 23,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.search,
                color: Colors.white,
                size: 20,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Welcome_location()));
              },
              icon: const Icon(
                FontAwesomeIcons.locationDot,
                color: Colors.white,
                size: 20,
              ),
            ),
          ],
        ),
        drawer: NavigationDrawerWidget(), //navigation drawer widget
        body: Stack(
          children: [
            Expanded(
              flex: 3,
              child: buildHomeBackground(),
            ),
            Stack(
              fit: StackFit.expand,
              children: [
                Align(
                  alignment: const Alignment(-0.9, -0.35),
                  child: FeaturedStoresCard(),
                ),
                Align(
                  alignment: const Alignment(-0.83, -0.41),
                  child: FStores(),
                ),
                Align(
                  alignment: const Alignment(0.85, -0.83),
                  child: SizedBox(
                    height: 40,
                    width: 170,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(0, 6, 210, 203),
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0)),
                        padding: const EdgeInsets.all(10.0),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => StoresScreen()));
                      },
                      child: const Text(
                        'CHOOSE STORE',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
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
                                          // ignore: deprecated_member_use
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
                                          // ignore: deprecated_member_use
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
                            )))),
                Align(
                  alignment: const Alignment(-0.83, 0),
                  child: RCMND(),
                ),
                Align(
                    alignment: const Alignment(-0.8, -0.25),
                    child: GestureDetector(
                      child: Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: const DecorationImage(
                              image: AssetImage("assets/vivamall.jpeg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VivaMallProducts()));
                      },
                    )),
                Align(
                    alignment: const Alignment(0, 0.55),
                    child: SizedBox(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            const SizedBox(
                              width: 16,
                            ),
                            ProdcutItemCardWiget(product: product1),
                            const SizedBox(
                              width: 35,
                            ),
                            ProdcutItemCardWiget(product: product4),
                            const SizedBox(
                              width: 35,
                            ),
                            ProdcutItemCardWiget(product: product2),
                            const SizedBox(
                              width: 35,
                            ),
                            ProdcutItemCardWiget(product: product3),
                            const SizedBox(
                              width: 35,
                            ),
                          ],
                        ))),
              ],
            )
          ],
        ));
  }

  Widget buildHomeBackground() => ClipRRect(
        child: Container(
          color: Colors.white,
          child: Opacity(
            opacity: 1,
            child: Image.asset(
              'assets/home_background.jpeg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
// ignore: non_constant_identifier_names
  Widget FeaturedStoresCard() => SizedBox(
      width: 390,
      height: 150,
      child: Opacity(
        opacity: 0.5,
        child: Card(
          color: Colors.white,
          margin: const EdgeInsets.all(15),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
              side: const BorderSide(color: Color.fromARGB(255, 255, 184, 12))),
        ),
      ));

// ignore: non_constant_identifier_names
  Widget FStores() => const Text(
        'FEATURED STORES',
        style: TextStyle(
            fontSize: 20,
            color: Color.fromARGB(255, 0, 0, 1),
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto'),
        textAlign: TextAlign.left,
      );
// ignore: non_constant_identifier_names
  Widget RCMND() => const Text(
        'NEW ARRIVALS',
        style: TextStyle(
            fontSize: 20,
            color: Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto'),
        textAlign: TextAlign.left,
      );
}
