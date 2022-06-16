import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileButton extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ProfileButton({Key? key, required this.text, required this.onClicked})
      : super(key: key);
  @override
  Widget build(BuildContext context) => SizedBox(
      width: 370,
      child: Card(
          color: Colors.white,
          margin: const EdgeInsets.all(15),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(0),
              topRight: Radius.circular(0),
            ),
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                minimumSize: Size.fromHeight(50),
                primary: Colors.white,
                onPrimary: Colors.black),
            child: buildContent(),
            onPressed: onClicked,
          )));

  Widget buildContent() => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            style: const TextStyle(
                fontSize: 15,
                color: Color.fromARGB(255, 88, 86, 86),
                fontWeight: FontWeight.normal),
          ),
          const Spacer(),
          const Icon(
            FontAwesomeIcons.pen,
            size: 15,
            color: Color.fromARGB(255, 250, 184, 12),
          )
        ],
      );
}
