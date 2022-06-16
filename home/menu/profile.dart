import 'package:flutter/material.dart';
import 'package:nahla/common_widgets/profie_button.dart';
import '../navigationbar/cart.dart';
import 'package:nahla/home/navigationbar/cart.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Align(
          alignment: Alignment(-1.2, 0.28),
          child: Text(
            "Profile",
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Stack(
        children: [
          Stack(
            fit: StackFit.expand,
            children: [
              Align(
                  alignment: const Alignment(0, -0.65),
                  child: manyScreenCard()),
              Align(
                alignment: Alignment(0, -0.95),
                child: pictureBar(),
              ),
              Align(
                  alignment: const Alignment(0, -0.635),
                  child: ProfileButton(text: "Username", onClicked: () {})),
              Align(
                  alignment: const Alignment(0, -0.47),
                  child: ProfileButton(text: "Email", onClicked: () {})),
              Align(
                  alignment: const Alignment(0, -0.305),
                  child:
                      ProfileButton(text: "Mobile Number", onClicked: () {})),
              Align(
                  alignment: const Alignment(0, -0.14),
                  child:
                      ProfileButton(text: "Customer Adress", onClicked: () {})),
            ],
          ),
        ],
      ));

  Widget pictureBar() => SizedBox(
      height: 120,
      width: 360,
      child: Card(
          color: Colors.white,
          margin: const EdgeInsets.all(15),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5),
              topRight: Radius.circular(5),
            ),
          ),
          child: Center(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Opacity(
                    opacity: 1,
                    child: Image.asset('assets/profile_pic.jpg'),
                  )))));
}
