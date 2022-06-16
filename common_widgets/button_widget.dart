import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ButtonWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onClicked;

  const ButtonWidget(
      {Key? key,
      required this.icon,
      required this.text,
      required this.onClicked})
      : super(key: key);
  @override
  Widget build(BuildContext context) => SizedBox(
      width: 370,
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
          Icon(
            icon,
            size: 24,
            color: const Color.fromARGB(255, 250, 184, 12),
          ),
          const SizedBox(
            width: 16,
          ),
          Text(
            text,
            style: const TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.normal),
          ),
          const SizedBox(
            width: 60,
          ),
          const Icon(
            FontAwesomeIcons.angleRight,
            size: 24,
            color: Color.fromARGB(255, 250, 184, 12),
          )
        ],
      );
}
