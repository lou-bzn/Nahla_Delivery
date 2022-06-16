import 'package:nahla/location/welcome_location.dart';
import 'package:nahla/some_widgets/some_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: camel_case_types
class SignUp_Screen extends StatelessWidget {
  const SignUp_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Expanded(flex: 3, child: buildBackground()),
          Stack(
            fit: StackFit.expand,
            children: [
              Align(
                alignment: const Alignment(0.0, 0.30),
                child: signupCard(),
              ),
              Align(
                alignment: const Alignment(0.0, 0.78),
                child: Sociallogin(),
              ),
              Align(
                  alignment: const Alignment(-0.78, 0.78),
                  child: SizedBox(
                    width: 120,
                    child: line(),
                  )),
              Align(
                  alignment: const Alignment(0.78, 0.78),
                  child: SizedBox(
                    width: 120,
                    child: line(),
                  )),
              Align(
                  alignment: const Alignment(0.0, -0.56),
                  child: SizedBox(
                      height: 95,
                      width: 95,
                      child: Align(
                        alignment: Alignment.center,
                        child: buildLogo(),
                      ))),
              Align(
                alignment: const Alignment(-0.7, -0.3),
                child: Register(),
              ),
              const Align(
                alignment: Alignment(-0.2, 0.93),
                child: Icon(
                  Icons.facebook,
                  color: Color.fromARGB(255, 14, 51, 72),
                  size: 45,
                ),
              ),
              const Align(
                alignment: Alignment(0.2, 0.93),
                child: Icon(
                  FontAwesomeIcons.googlePlus,
                  color: Colors.red,
                  size: 45,
                ),
              ),
              const Align(
                alignment: Alignment(0.65, 0.24),
                child: Icon(
                  Icons.lock,
                  color: Color.fromARGB(255, 250, 184, 12),
                  size: 23,
                ),
              ),
              Align(
                  alignment: const Alignment(-0.07, -0.06),
                  child: SizedBox(
                    width: 280,
                    child: Email(),
                  )),
              Align(
                  alignment: const Alignment(-0.07, 0.24),
                  child: SizedBox(
                    width: 280,
                    child: Password(),
                  )),
              Align(
                  alignment: const Alignment(-0.07, -0.21),
                  child: SizedBox(
                    width: 280,
                    child: Name(),
                  )),
              Align(
                  alignment: const Alignment(-0.07, 0.09),
                  child: SizedBox(
                    width: 280,
                    child: mobileNumber(),
                  )),
              const Align(
                alignment: Alignment(0.65, -0.06),
                child: Icon(
                  Icons.email,
                  color: Color.fromARGB(255, 250, 184, 12),
                  size: 23,
                ),
              ),
              const Align(
                alignment: Alignment(0.65, -0.21),
                child: Icon(
                  Icons.person,
                  color: Color.fromARGB(255, 250, 184, 12),
                  size: 23,
                ),
              ),
              const Align(
                alignment: Alignment(0.65, 0.09),
                child: Icon(
                  Icons.phone,
                  color: Color.fromARGB(255, 250, 184, 12),
                  size: 23,
                ),
              ),
              Align(
                alignment: const Alignment(-0.2, 0.38),
                child: ReferalCode(),
              ),
              Align(alignment: const Alignment(0.3, 0.38), child: Apply()),
              Align(
                alignment: const Alignment(0.0, 0.66),
                child: SizedBox(
                  height: 40,
                  width: 150,
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
                              builder: (context) => Welcome_location()));
                    },
                    child: const Text(
                      'GO',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const Alignment(-0.05, 0.52),
                child: SizedBox(
                  height: 50,
                  width: 250,
                  child: termsPrivacy(),
                ),
              ),
            ],
          )
        ],
      ));
}
