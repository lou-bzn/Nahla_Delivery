import 'package:flutter/material.dart';
import 'set_location.dart';
import 'package:nahla/some_widgets/some_widgets.dart';

// ignore: camel_case_types
class Welcome_location extends StatelessWidget {
  const Welcome_location({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Expanded(
            flex: 3,
            child: buildBackgroundLocation(),
          ),
          Stack(
            fit: StackFit.expand,
            children: [
              Align(
                alignment: const Alignment(0.0, 0.0),
                child: Locationcard(),
              ),
              Align(
                alignment: const Alignment(0.0, -0.3),
                child: welcome(),
              ),
              Align(
                alignment: const Alignment(0.0, -0.2),
                child: welcoming(),
              ),
              Align(
                alignment: const Alignment(0.0, 0.5),
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
                              builder: (context) => Set_location()));
                    },
                    child: const Text(
                      'SET YOUR LOCATION',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                  alignment: const Alignment(0.0, -0.5),
                  child: SizedBox(
                    height: 95,
                    width: 95,
                    child: buildLogo1(),
                  )),
            ],
          )
        ],
      ));
}

Widget buildBackgroundLocation() => ClipRRect(
      child: Container(
        color: Colors.white,
        child: Opacity(
          opacity: 1,
          child: Image.asset(
            'assets/welcome_location_background.jpeg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
// ignore: non_constant_identifier_names
Widget Locationcard() => SizedBox(
    width: 350,
    height: 600,
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
Widget welcome() => const Text(
      'Welcome to Nahla',
      style: TextStyle(
          fontSize: 26,
          color: Color.fromARGB(255, 0, 0, 0),
          fontWeight: FontWeight.bold,
          fontFamily: 'Roboto'),
      textAlign: TextAlign.center,
    );
Widget welcoming() => const Text(
      'Lets first check if we deliver to adress',
      style: TextStyle(
          fontSize: 16,
          color: Color.fromARGB(255, 0, 0, 0),
          fontWeight: FontWeight.bold,
          fontFamily: 'Roboto'),
      textAlign: TextAlign.center,
    );
