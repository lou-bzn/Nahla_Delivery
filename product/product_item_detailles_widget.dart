import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nahla/product/product_item.dart';

// ignore: must_be_immutable
class ProdcutItemCardWigetDetailles extends StatelessWidget {
  int itembnumber;
  ProdcutItemCardWigetDetailles({
    Key? key,
    required this.product,
    required this.itembnumber,
  }) : super(key: key);
  final padding = const EdgeInsets.all(10.0);
  final GroceryItem product;
  final double width = 350;
  final double height = 500;
  final Color borderColor = const Color.fromARGB(255, 250, 184, 12);
  final double borderRadius = 5;
  final double opacity = 0.5;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          border: Border.all(
            color: borderColor,
          ),
          borderRadius: BorderRadius.circular(borderRadius)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            productName(),
            const Spacer(),
            const Icon(
              FontAwesomeIcons.heart,
              color: Colors.black,
            )
          ],
        ),
        Expanded(
          child: Center(
            child: imageWidget(),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        productDescription(),
        const SizedBox(
          height: 10,
        ),
        productPrice(),
        ItemAvailable(),
        const SizedBox(
          height: 30,
        ),
        Row(children: [
          const Spacer(),
          buttonPLus(),
          const SizedBox(
            width: 20,
          ),
          ItemNumber(),
          const SizedBox(
            width: 20,
          ),
          buttonMice(),
          const Spacer(),
        ]),
        addBUtton(context),
      ]),
    );
  }

  Widget imageWidget() {
    return SizedBox(
        height: 150, width: 300, child: Image.asset(product.imagePath));
  }

  Widget addBUtton(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 40.0,
      width: 2500.0,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
            side: const BorderSide(color: Color(0x00fab803))),
        onPressed: () {},
        padding: const EdgeInsets.all(10.0),
        color: const Color.fromRGBO(250, 184, 11, 10),
        textColor: Colors.white,
        child: const Text("ADD TO CART",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto')),
      ),
    );
  }

  Widget productName() {
    return SizedBox(
        child: Text(product.name,
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )));
  }

  Widget productDescription() {
    return SizedBox(
        child: Text(
      product.description,
      style: const TextStyle(
          fontSize: 16, color: Color.fromARGB(255, 105, 101, 101)),
    ));
  }

  Widget productPrice() {
    return SizedBox(
        child: Text(
      "${product.price.toStringAsFixed(2)}\DA",
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ));
  }

  // ignore: non_constant_identifier_names
  Widget ItemAvailable() {
    return SizedBox(
      child: Text(
        product.itemNumbers.toStringAsFixed(2),
        style: TextStyle(
            color: borderColor, fontSize: 18, fontWeight: FontWeight.normal),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget ItemNumber() {
    return SizedBox(
      child: Text(
        itembnumber.toStringAsFixed(0),
        style: const TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.normal),
      ),
    );
  }

  Widget buttonPLus() {
    return SizedBox(
        height: 50,
        width: 50,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              onPrimary: const Color.fromRGBO(250, 184, 12, 1),
              primary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                side: BorderSide(color: borderColor),
              ),
            ),
            onPressed: () {
              addition(itembnumber);
            },
            child: Icon(
              Icons.add,
              color: borderColor,
              size: 20,
            )));
  }

  Widget buttonMice() {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(55),
          color: const Color.fromARGB(255, 0, 0, 0)),
      child: ElevatedButton(
          onPressed: () {
            substraction(itembnumber);
          },
          style: ElevatedButton.styleFrom(
            onPrimary: const Color.fromRGBO(250, 184, 12, 1),
            primary: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
              side: BorderSide(color: borderColor),
            ),
          ),
          child: Icon(
            Icons.remove,
            color: borderColor,
            size: 20,
          )),
    );
  }

  int addition(int itemnumber) {
    itemnumber = itemnumber + 1;
    return itemnumber;
  }

  int substraction(int itemnumber) {
    if (itemnumber > 1) {
      itemnumber = itemnumber - 1;
    }
    return itemnumber;
  }
}
