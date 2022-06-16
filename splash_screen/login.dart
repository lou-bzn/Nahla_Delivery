import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nahla/splash_screen/signup.dart';
import 'package:nahla/location/welcome_location.dart';
import 'package:nahla/some_widgets/some_widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';

// ignore: camel_case_types
class login_screen extends StatelessWidget {
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  login_screen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.white,
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Welcome_location();
            } else {
              return Stack(children: [
                Expanded(
                  flex: 3,
                  child: buildBackground(),
                ),
                Stack(fit: StackFit.expand, children: [
                  Align(
                    alignment: const Alignment(0.0, 0.25),
                    child: Logincard(),
                  ),
                  Align(
                    alignment: const Alignment(-0.7, 0.01),
                    child: Login(),
                  ),
                  Align(
                    alignment: const Alignment(0.0, 0.43),
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
                        onPressed: SignIN,
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
                      alignment: const Alignment(-0.07, 0.09),
                      child: SizedBox(
                        width: 280,
                        child: TextField(
                            cursorColor: const Color.fromARGB(
                              250,
                              250,
                              184,
                              11,
                            ),
                            controller: emailcontroller,
                            cursorWidth: 2,
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.done,
                            decoration: const InputDecoration(
                                hintText: 'Email',
                                hintStyle: TextStyle(
                                  color: Colors.black,
                                ),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 1,
                                )))),
                      )),
                  Align(
                      alignment: const Alignment(-0.07, 0.25),
                      child: SizedBox(
                        width: 280,
                        child: TextField(
                            cursorColor: const Color.fromARGB(
                              250,
                              250,
                              184,
                              11,
                            ),
                            controller: passwordcontroller,
                            cursorWidth: 2,
                            decoration: const InputDecoration(
                              hintText: 'Password',
                              hintStyle: TextStyle(color: Colors.black),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.black,
                                width: 1,
                              )),
                            )),
                      )),
                  Align(alignment: const Alignment(0.0, 0.55), child: FP()),
                  Align(
                      alignment: const Alignment(0.0, 0.65),
                      child: Sociallogin()),
                  Align(
                      alignment: const Alignment(-0.20, 0.90),
                      child: NewUser()),
                  Align(
                      alignment: const Alignment(0.25, 0.94),
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUp_Screen()));
                          },
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 250, 184, 12),
                              fontWeight: FontWeight.normal,
                            ),
                            textAlign: TextAlign.left,
                          ))),
                  Align(
                      alignment: const Alignment(0.0, -0.20),
                      child: SizedBox(
                          height: 95,
                          width: 95,
                          child: Align(
                            alignment: Alignment.center,
                            child: buildLogo(),
                          ))),
                  const Align(
                    alignment: Alignment(0.65, 0.08),
                    child: Icon(
                      Icons.email,
                      color: Color.fromARGB(255, 250, 184, 12),
                      size: 23,
                    ),
                  ),
                  const Align(
                    alignment: Alignment(-0.2, 0.79),
                    child: Icon(
                      Icons.facebook,
                      color: Color.fromARGB(255, 14, 51, 82),
                      size: 45,
                    ),
                  ),
                  const Align(
                    alignment: Alignment(0.2, 0.79),
                    child: Icon(
                      FontAwesomeIcons.googlePlus,
                      color: Colors.red,
                      size: 45,
                    ),
                  ),
                  Align(
                      alignment: const Alignment(0.78, 0.65),
                      child: SizedBox(
                        width: 120,
                        child: line(),
                      )),
                  Align(
                      alignment: const Alignment(-0.78, 0.65),
                      child: SizedBox(
                        width: 120,
                        child: line(),
                      )),
                  const Align(
                    alignment: Alignment(0.65, 0.25),
                    child: Icon(
                      Icons.lock,
                      color: Color.fromARGB(255, 250, 184, 12),
                      size: 23,
                    ),
                  ),
                ])
              ]);
            }
          }));

  // ignore: non_constant_identifier_names
  Future SignIN() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailcontroller.text.trim(),
        password: passwordcontroller.text.trim());
  }
}
