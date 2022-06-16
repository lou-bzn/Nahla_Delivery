import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'categories/categories.dart';
import 'offers.dart';
import 'package:nahla/home/navigationbar/cart.dart';
import 'package:nahla/product/product_item_widget.dart';
import 'package:nahla/product/product_item.dart';

late final GroceryItem product1 = vivaMallItems[0];
late final GroceryItem product2 = vivaMallItems[1];
late final GroceryItem product3 = vivaMallItems[2];
late final GroceryItem product4 = vivaMallItems[3];
late final GroceryItem product5 = vivaMallItems[4];
late final GroceryItem product6 = vivaMallItems[5];
late final GroceryItem product7 = vivaMallItems[6];
late final GroceryItem product8 = vivaMallItems[7];
final padding = EdgeInsets.all(10.0);

class VivaMallProducts extends StatelessWidget {
  const VivaMallProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Align(
          alignment: Alignment(-1.5, 0.28),
          child: Text(
            "Viva Mall",
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.infoCircle,
              color: Colors.white,
              size: 20,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.sort,
              color: Colors.white,
              size: 20,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CartScreen()));
            },
            icon: const Icon(
              FontAwesomeIcons.shoppingCart,
              color: Colors.white,
              size: 20,
            ),
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 254, 240, 230),
      body: Stack(children: [
        Stack(fit: StackFit.expand, children: [
          Align(
            alignment: const Alignment(0, -0.9),
            child: SizedBox(
                height: 40,
                width: 334,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: Color.fromARGB(255, 255, 255, 255)),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: TextFormField(
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                    cursorColor: const Color.fromARGB(
                      250,
                      250,
                      184,
                      11,
                    ),
                    cursorWidth: 2,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      hintText: 'Search Product',
                      hintStyle: const TextStyle(
                        height: 0.5,
                        fontSize: 18,
                      ),
                      prefixIcon: const Icon(
                        FontAwesomeIcons.search,
                        color: Colors.black,
                        size: 16,
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 220, 228, 247))),
                    ),
                  ),
                )),
          ),
          Align(
            alignment: const Alignment(-0.75, -0.75),
            child: SizedBox(
              height: 40,
              width: 160,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 220, 228, 247),
                  onPrimary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  padding: const EdgeInsets.all(10.0),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Categories()));
                },
                child: const Text(
                  'Catgegories',
                  style: TextStyle(
                      fontSize: 18, color: Color.fromARGB(255, 0, 0, 0)),
                ),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.75, -0.75),
            child: SizedBox(
              height: 40,
              width: 160,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 220, 228, 247),
                  onPrimary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  padding: const EdgeInsets.all(10.0),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Offers()));
                },
                child: const Text(
                  'Offers',
                  style: TextStyle(
                      fontSize: 18, color: Color.fromARGB(255, 0, 0, 0)),
                ),
              ),
            ),
          ),
          Align(
              alignment: const Alignment(0, 1.6),
              child: SizedBox(
                  height: 560,
                  child: ListView.builder(
                      padding: const EdgeInsets.all(10),
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            const SizedBox(height: 15),
                            buildItem(1, product1, product2),
                            const SizedBox(height: 15),
                            buildItem(2, product3, product4),
                            const SizedBox(height: 15),
                            buildItem(3, product5, product6),
                            const SizedBox(height: 15),
                            buildItem(4, product7, product8),
                            const SizedBox(height: 15),
                            buildItem(5, product1, product2),
                            const SizedBox(height: 15),
                            buildItem(6, product3, product4),
                            const SizedBox(height: 15),
                            buildItem(7, product5, product6),
                            const SizedBox(height: 15),
                            buildItem(8, product7, product8),
                          ],
                        );
                      }))),
        ])
      ]));

  Widget buildItem(int index, GroceryItem productX, GroceryItem productY) =>
      Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          ProdcutItemCardWiget(product: productX),
          const SizedBox(
            width: 15,
          ),
          ProdcutItemCardWiget(product: productY),
        ],
      );
}
