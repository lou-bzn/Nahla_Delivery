import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'vivamall_products.dart';

class StoresScreen extends StatelessWidget {
  const StoresScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
          body: Stack(
        children: [
          Stack(
            fit: StackFit.expand,
            children: [
              Align(
                alignment: const Alignment(2, -1),
                child: SizedBox(
                    width: 500,
                    height: 80,
                    child: Card(
                      color: const Color.fromARGB(255, 250, 184, 12),
                      margin: const EdgeInsets.all(0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                        side: BorderSide(
                            color: Color.fromARGB(255, 255, 184, 12)),
                      ),
                      elevation: 5,
                      child: Container(
                          margin: const EdgeInsets.all(0),
                          child: Stack(fit: StackFit.expand, children: [
                            Align(
                              alignment: const Alignment(-0.95, 0.55),
                              child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(
                                  FontAwesomeIcons.arrowLeft,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            ),
                            Align(
                              alignment: const Alignment(0.95, 0.5),
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  FontAwesomeIcons.search,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            ),
                            const Align(
                              alignment: Alignment(-0.65, 0.28),
                              child: Text(
                                "Stores",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ])),
                    )),
              ),
              Align(
                alignment: const Alignment(0.0, 0.9),
                child: BackGroundCard(),
              ),
              Align(
                alignment: const Alignment(0, -0.72),
                child: Store(),
              ),
              Align(
                  alignment: const Alignment(-0.8, -0.68),
                  child: GestureDetector(
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
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
            ],
          )
        ],
      ));
}

// ignore: non_constant_identifier_names
Widget StoresSearchCard() => Container(
    width: 490,
    height: 80,
    child: Opacity(
        opacity: 1,
        child: Card(
          color: const Color.fromARGB(255, 250, 184, 12),
          margin: const EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
            side: const BorderSide(color: Color.fromARGB(255, 255, 184, 12)),
          ),
          elevation: 5,
        )));
// ignore: non_constant_identifier_names
Widget BackGroundCard() => SizedBox(
    width: 400,
    height: 650,
    child: Opacity(
        opacity: 0.5,
        child: Card(
          color: Colors.white,
          margin: const EdgeInsets.all(15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: const BorderSide(color: Color.fromARGB(255, 255, 184, 12)),
          ),
          elevation: 5,
          child: Container(
            margin: const EdgeInsets.all(10),
          ),
        )));

// ignore: non_constant_identifier_names
Widget Store() => SizedBox(
    width: 399,
    height: 150,
    child: Opacity(
        opacity: 1,
        child: Card(
          color: Colors.white,
          margin: const EdgeInsets.all(15),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5),
              topRight: Radius.circular(5),
            ),
            side: BorderSide(color: Color.fromARGB(255, 255, 184, 12)),
          ),
          elevation: 5,
          child: Container(
            margin: const EdgeInsets.all(10),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Align(
                  alignment: const Alignment(-0.10, -0.85),
                  child: titleVV(),
                ),
                Align(
                  alignment: const Alignment(0.75, -0.25),
                  child: description(),
                ),
              ],
            ),
          ),
        )));

Widget description() => const Text(
      'Rice-dry grains-oil-spicesand salt.',
      style: TextStyle(
        fontSize: 14,
        color: Colors.black,
        fontWeight: FontWeight.normal,
      ),
      textAlign: TextAlign.left,
    );
Widget titleVV() => const Text(
      'Viva Mall',
      style: TextStyle(
          fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
      textAlign: TextAlign.left,
    );
