import 'product_item.dart';
import 'package:flutter/material.dart';

class ProdcutInCart extends StatelessWidget {
  const ProdcutInCart({
    Key? key,
    required this.product,
  }) : super(key: key);

  final padding = const EdgeInsets.all(10.0);
  final GroceryItem product;
  final double width = 320;
  final double height = 350;
  final Color borderColor = const Color.fromARGB(255, 250, 184, 12);
  final double borderRadius = 5;
  final double opacity = 0.5;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
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
          vivaMallbar(),
          const SizedBox(height: 10),
          item_form(),
          const SizedBox(height: 10)
        ]),
      ),
      onTap: () {},
    );
  }

  Widget item_form() => SizedBox(
      height: 200,
      width: 310,
      child: Row(
        children: [
          add_substract(),
          const SizedBox(
            width: 5,
          ),
          imageWidget(),
          const SizedBox(
            width: 5,
          ),
          Column(
            children: [
              productName(),
              const SizedBox(
                height: 5,
              ),
              productPrice(),
            ],
          )
        ],
      ));

  Widget imageWidget() {
    return SizedBox(
        height: 80, width: 80, child: Image.asset(product.imagePath));
  }

  // ignore: non_constant_identifier_names
  Widget add_substract() {
    return SizedBox(
      height: 80,
      width: 40,
      child: Column(
        children: [
          buttonPLus(),
          ItemNumber(),
          buttonMice(),
        ],
      ),
    );
  }

  Widget productName() {
    return SizedBox(
        child: Text(product.name,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            )));
  }

  Widget vivaMallbar() {
    return Container(
        height: 30,
        width: 320,
        color: const Color.fromARGB(255, 220, 228, 247),
        child: const Text(
          "Viva Mall",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ));
  }

  Widget productPrice() {
    return SizedBox(
        child: Text(
      "${product.price.toStringAsFixed(2)}\DA",
      style: const TextStyle(
          fontSize: 15, color: Color.fromARGB(255, 250, 184, 12)),
    ));
  }
}

Widget buttonPLus() {
  return SizedBox(
      height: 30,
      width: 30,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            onPrimary: const Color.fromRGBO(250, 184, 12, 1),
            primary: Colors.white,
          ),
          onPressed: () {
            addition(itemnumber);
          },
          child: const Icon(
            Icons.add,
            color: Color.fromARGB(255, 250, 184, 12),
            size: 17,
          )));
}

int itemnumber = 1;
// ignore: non_constant_identifier_names
Widget ItemNumber() {
  return SizedBox(
    child: Text(
      itemnumber.toStringAsFixed(0),
      style: const TextStyle(
          color: Colors.black, fontSize: 15, fontWeight: FontWeight.normal),
    ),
  );
}

Widget buttonMice() {
  return SizedBox(
      height: 30,
      width: 30,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            onPrimary: Color.fromRGBO(250, 184, 12, 1),
            primary: Colors.white,
          ),
          onPressed: () {
            substraction(itemnumber);
          },
          child: const Icon(
            Icons.remove,
            color: Color.fromARGB(255, 250, 184, 12),
            size: 17,
          )));
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
