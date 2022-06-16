import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget Password() => const TextField(
    cursorColor: Color.fromARGB(
      250,
      250,
      184,
      11,
    ),
    cursorWidth: 2,
    decoration: InputDecoration(
      hintText: 'Password',
      hintStyle: TextStyle(color: Colors.black),
      enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
        color: Colors.black,
        width: 1,
      )),
    ));

Widget Login() => const Text(
      'LOGIN',
      style: TextStyle(
          fontSize: 20,
          color: Color.fromARGB(255, 0, 0, 0),
          fontWeight: FontWeight.bold,
          fontFamily: 'Roboto'),
      textAlign: TextAlign.left,
    );

Widget Email() => const TextField(
    cursorColor: Color.fromARGB(
      250,
      250,
      184,
      11,
    ),
    cursorWidth: 2,
    keyboardType: TextInputType.emailAddress,
    textInputAction: TextInputAction.done,
    decoration: InputDecoration(
        hintText: 'Email',
        hintStyle: TextStyle(
          color: Colors.black,
        ),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
          color: Colors.black,
          width: 1,
        ))));

Widget FP() => const Text(
      'Forget Password?',
      style: TextStyle(
          fontSize: 15,
          color: Color.fromARGB(250, 250, 184, 12),
          fontWeight: FontWeight.normal,
          fontFamily: 'Roboto'),
      textAlign: TextAlign.center,
    );

Widget Sociallogin() => const Text(
      'Social Login',
      style: TextStyle(
          fontSize: 15,
          color: Color.fromARGB(105, 58, 58, 57),
          fontWeight: FontWeight.normal,
          fontFamily: 'Roboto'),
      textAlign: TextAlign.left,
    );
Widget NewUser() => const Text(
      'New User?',
      style: TextStyle(
          fontSize: 15,
          color: Colors.black,
          fontWeight: FontWeight.normal,
          fontFamily: 'Roboto'),
      textAlign: TextAlign.left,
    );

Widget line() => const Divider(
      color: Color.fromARGB(255, 250, 184, 12),
      height: 8,
      thickness: 2,
      indent: 8,
      endIndent: 10,
    );
//Login card
Widget Logincard() => SizedBox(
    width: 350,
    height: 200,
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
//background image
Widget buildBackground() => ClipRRect(
      child: Container(
        color: Colors.white,
        child: Opacity(
          opacity: 1,
          child: Image.asset(
            'assets/splash_screen_background.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
//logo
Widget buildLogo() => ClipRRect(
    borderRadius: BorderRadius.circular(70),
    child: Opacity(
      opacity: 0.7,
      child: Image.asset('assets/applogo.jpeg'),
    ));
Widget buildLogo1() => ClipRRect(
    borderRadius: BorderRadius.circular(70),
    child: Opacity(
      opacity: 0.7,
      child: Image.asset('assets/applogo.jpeg'),
    ));

//signup card
Widget signupCard() => SizedBox(
    width: 350,
    height: 400,
    child: Opacity(
        opacity: 0.5,
        child: Card(
          color: Colors.white,
          margin: const EdgeInsets.all(15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: BorderSide(color: Color.fromARGB(255, 255, 184, 12)),
          ),
          elevation: 5,
          child: Container(
            margin: const EdgeInsets.all(10),
          ),
        )));
//Register textfield
Widget Register() => const Text(
      'REGISTER',
      style: TextStyle(
          fontSize: 20,
          color: Color.fromARGB(255, 0, 0, 0),
          fontWeight: FontWeight.bold,
          fontFamily: 'Roboto'),
      textAlign: TextAlign.left,
    );
//Name textfiels
Widget Name() => const TextField(
    cursorColor: Color.fromARGB(
      250,
      250,
      184,
      11,
    ),
    cursorWidth: 2,
    decoration: InputDecoration(
      hintText: 'Name',
      hintStyle: TextStyle(color: Colors.black),
      enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
        color: Colors.black,
        width: 1,
      )),
    ));
//mobilenumber textfield
Widget mobileNumber() => const TextField(
    cursorColor: Color.fromARGB(
      250,
      250,
      184,
      11,
    ),
    cursorWidth: 2,
    decoration: InputDecoration(
      hintText: 'Mobile Number',
      hintStyle: TextStyle(color: Colors.black),
      enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
        color: Colors.black,
        width: 1,
      )),
    ));
//ReferalCode Text
Widget ReferalCode() => const Text(
      'Referral Code?',
      style: TextStyle(
          fontSize: 15,
          color: Colors.black,
          fontWeight: FontWeight.normal,
          fontFamily: 'Roboto'),
      textAlign: TextAlign.left,
    );
// Apply text
Widget Apply() => const Text(
      'Apply',
      style: TextStyle(
          fontSize: 15,
          color: Color.fromARGB(250, 250, 184, 12),
          fontWeight: FontWeight.normal,
          fontFamily: 'Roboto'),
      textAlign: TextAlign.center,
    );
//term and privacy text
Widget termsPrivacy() => const Text(
      'By registering you confirm that you accept the Terms & Conditions and Privacy Policy',
      style: TextStyle(
          fontSize: 13,
          color: Colors.black,
          fontWeight: FontWeight.normal,
          fontFamily: 'Roboto'),
      textAlign: TextAlign.left,
    );

Widget signup() => SizedBox(
    width: 350,
    height: 400,
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
            margin: const EdgeInsets.all(8),
            child: Column(
              children: const [],
            ),
          ),
        )));
