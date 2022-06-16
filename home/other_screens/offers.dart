import 'package:flutter/material.dart';
import 'package:nahla/common_widgets/button_offers.dart';

class Offers extends StatelessWidget {
  const Offers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Color.fromARGB(255, 254, 240, 230),
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Align(
            alignment: Alignment(-1.2, 0.28),
            child: Text(
              "Offers",
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
              child: title(Title: "OFFERS")),
          Align(
              alignment: const Alignment(-0.85, -0.75),
              child: OfferButtonWidget(
                offerName: "Offer 1",
                onClicked: () {},
              )),
          Align(
              alignment: const Alignment(0.85, -0.75),
              child: OfferButtonWidget(
                offerName: "Offer 2",
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
