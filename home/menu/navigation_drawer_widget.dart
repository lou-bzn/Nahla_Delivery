import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nahla/home/menu/about_nahla.dart';
import 'package:nahla/home/menu/favourites.dart';
import 'package:nahla/home/menu/help.dart';
import 'package:nahla/home/menu/my_reviews.dart';
import 'package:nahla/home/menu/order_history.dart';
import 'package:nahla/home/menu/profile.dart';
import 'package:nahla/home/menu/refer_friend.dart';
import 'package:nahla/home/menu/settings.dart';
import 'package:nahla/home/menu/your-adress.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:nahla/splash_screen/login.dart';
import 'favourites.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = const EdgeInsets.symmetric(horizontal: 15);

  NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const name = 'Sami';
    const email = 'Sami@abs.com';
    const urlImage = 'assets/profile_pic.jpg';

    return Drawer(
      child: Material(
          color: Colors.white,
          child: ListView(
            children: <Widget>[
              buildHeader(
                  urlImage: urlImage,
                  name: name,
                  email: email,
                  context: context,
                  onClicked: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Profile(),
                        ),
                      )),
              buildMenuItem(
                  text: 'Favourites',
                  icon: FontAwesomeIcons.heart,
                  onClicked: () => selectedItem(context, 0)),
              buildMenuItem(
                  text: 'Order History',
                  // ignore: deprecated_member_use
                  icon: FontAwesomeIcons.history,
                  onClicked: () => selectedItem(context, 1)),
              buildMenuItem(
                  text: 'Your Adress',
                  icon: FontAwesomeIcons.locationDot,
                  onClicked: () => selectedItem(context, 2)),
              buildMenuItem(
                  text: 'My Reviews',
                  icon: FontAwesomeIcons.star,
                  onClicked: () => selectedItem(context, 3)),
              buildMenuItem(
                  text: 'Refer Friend',
                  // ignore: deprecated_member_use
                  icon: FontAwesomeIcons.userFriends,
                  onClicked: () => selectedItem(context, 4)),
              buildMenuItem(
                  text: 'About Nahla',
                  // ignore: deprecated_member_use
                  icon: FontAwesomeIcons.infoCircle,
                  onClicked: () => selectedItem(context, 5)),
              buildMenuItem(
                  text: 'Help',
                  icon: FontAwesomeIcons.question,
                  onClicked: () => selectedItem(context, 6)),
              buildMenuItem(
                text: 'Lanaguage',
                icon: FontAwesomeIcons.language,
              ),
              const SizedBox(
                height: 16,
              ),
              const Divider(
                color: Color.fromARGB(255, 250, 184, 12),
              ),
              buildMenuItem(
                  text: 'Sign Out',
                  icon: FontAwesomeIcons.powerOff,
                  onClicked: () => selectedItem(context, 8)),
            ],
          )),
    );
  }

  Widget buildHeader(
          {required BuildContext context,
          required String urlImage,
          required String name,
          required String email,
          VoidCallback? onClicked}) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: padding.add(const EdgeInsets.symmetric(vertical: 40)),
          child: Row(children: [
            const CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/profile_pic.jpg'),
            ),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(fontSize: 20, color: Colors.black),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  email,
                  style: const TextStyle(fontSize: 14, color: Colors.black),
                )
              ],
            ),
            const Spacer(),
            CircleAvatar(
              backgroundColor: Colors.amber,
              radius: 20,
              child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Settings()));
                  },
                  icon: const Icon(
                    Icons.settings,
                    color: Colors.white,
                  )),
            ),
          ]),
        ),
      );
  Widget buildMenuItem(
      {required String text, required IconData icon, VoidCallback? onClicked}) {
    // ignore: constant_identifier_names
    const Color = Colors.amber;
    return ListTile(
      leading: Icon(
        icon,
        color: Color,
        size: 20,
      ),
      title: Text(
        text,
        style: const TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.normal),
      ),
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Favourites()));
        break;
      case 1:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => OrderHistory()));
        break;
      case 2:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => yourAdress()));
        break;
      case 3:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => myReviews()));
        break;
      case 4:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => ReferFriend()));
        break;
      case 5:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => aboutNahla()));
        break;
      case 6:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Help()));
        break;
      case 8:
        SignOut(context: context);
    }
  }

  final FirebaseAuth auth = FirebaseAuth.instance;
  // ignore: non_constant_identifier_names
  SignOut({required BuildContext context}) async {
    await auth.signOut();
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => login_screen(),
        ));
  }
}
