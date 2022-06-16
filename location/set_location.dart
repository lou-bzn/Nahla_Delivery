import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nahla/home/home_page.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// ignore: camel_case_types
class Set_location extends StatelessWidget {
  // ignore: unused_field
  static const initialCameraPosition =
      CameraPosition(target: LatLng(36.9, 7.76667), zoom: 11.5);

  const Set_location({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
          const Align(
            alignment: Alignment(0, -0.50),
            child: SizedBox(
                height: 300,
                width: 300,
                child: Image(
                  image: AssetImage("assets/location.png"),
                )),
          ),
          Align(
            alignment: const Alignment(0.0, 0.85),
            child: SizedBox(
              height: 40,
              width: 330,
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Home_Page()));
                },
                child: const Text(
                  'CONFIRM LOCATION',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Align(
              alignment: const Alignment(0.0, 0.65),
              child: SizedBox(
                width: 330,
                child: landMark(),
              )),
          Align(
            alignment: const Alignment(-0.75, 0.30),
            child: SetLocation(),
          ),
          Align(
            alignment: const Alignment(-0.8, 0.38),
            child: Location(),
          ),
          Align(
            alignment: const Alignment(0, -1),
            child: SizedBox(
                width: 500,
                height: 80,
                child: Card(
                  color: const Color.fromARGB(255, 250, 184, 12),
                  margin: const EdgeInsets.all(0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                    side: const BorderSide(
                        color: Color.fromARGB(255, 255, 184, 12)),
                  ),
                  elevation: 5,
                )),
          ),
          Align(
              alignment: const Alignment(0, -0.90),
              child: SizedBox(
                  height: 40,
                  width: 360,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25)),
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
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 250, 184, 12)),
                        ),
                        hintText: 'Search ',
                        hintStyle: const TextStyle(
                          height: 0.5,
                          fontSize: 18,
                        ),
                        prefixIcon: const Icon(
                          // ignore: deprecated_member_use
                          FontAwesomeIcons.search,
                          color: Colors.black,
                          size: 16,
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: const BorderSide(
                                color: Color.fromARGB(255, 250, 184, 12))),
                      ),
                    ),
                  )))
        ],
      ));

  Widget landMark() => const TextField(
      cursorColor: Color.fromARGB(
        250,
        250,
        184,
        11,
      ),
      cursorWidth: 2,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        hintText: 'PLease enter Flat NO/Landmark',
        labelText: 'Flat No/ Landmark',
        labelStyle:
            TextStyle(color: Color.fromARGB(255, 79, 77, 77), fontSize: 18),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 250, 184, 12),
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
            borderSide:
                BorderSide(color: Color.fromARGB(255, 250, 184, 12), width: 2)),
      ));
// ignore: non_constant_identifier_names
  Widget SetLocation() => const Text(
        'Set Delivery Location',
        style: TextStyle(
            fontSize: 18,
            color: Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto'),
        textAlign: TextAlign.left,
      );

  // ignore: non_constant_identifier_names
  Widget Location() => const Text(
        'Location',
        style: TextStyle(
            fontSize: 15,
            color: Color.fromARGB(105, 58, 58, 57),
            fontWeight: FontWeight.normal,
            fontFamily: 'Roboto'),
        textAlign: TextAlign.left,
      );
}
