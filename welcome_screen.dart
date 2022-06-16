// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:nahla/splash_screen/login.dart';
import 'package:flutter_svg/svg.dart';

// ignore: camel_case_types
class welcome_screen extends StatelessWidget {
  const welcome_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: const EdgeInsets.all(12),
          child: Stack(fit: StackFit.expand, children: [
            buildBackground(),

            // ignore: prefer_const_literals_to_create_immutables

            Align(
              alignment: const Alignment(-0.05, -0.80),
              child: buildBigTitle(),
            ),
            Align(
                alignment: const Alignment(-0.02, -0.65),
                child: icon(iconPath: "assets/icons_svg/delivery_icon.svg")),
            Align(
                alignment: const Alignment(0.0, -0.50),
                child: buildTitle(title: "24 Houres")),
            Align(
                alignment: const Alignment(0.0, -0.40),
                child: description(description: "Nahla Delivery works 24/7")),
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
                child:
                    icon(iconPath: "assets/icons_svg/availability_icon.svg")),
            Align(
                alignment: const Alignment(0.0, 0.35),
                child: buildTitle(title: "Availabe")),
            Align(
                alignment: const Alignment(0.0, 0.47),
                child: description(
                    description: "Nahla is always available for your service")),
            Align(
              alignment: const Alignment(0.0, 0.90),
              child: Container(
                margin: const EdgeInsets.all(10),
                height: 50.0,
                width: 300.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      side: const BorderSide(color: Color(0x00fab803))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => login_screen()));
                  },
                  padding: const EdgeInsets.all(10.0),
                  color: const Color.fromRGBO(250, 184, 11, 10),
                  textColor: Colors.white,
                  child: const Text("NEXT",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto')),
                ),
              ),
            )
          ]),
        ),
      );

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
