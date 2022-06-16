import 'package:flutter/material.dart';

class OfferButtonWidget extends StatelessWidget {
  final String offerName;
  final VoidCallback onClicked;

  const OfferButtonWidget({
    Key? key,
    required this.offerName,
    required this.onClicked,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) => SizedBox(
      height: 40,
      width: 175,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
            side: const BorderSide(color: Color.fromARGB(255, 250, 184, 12)),
          ),
          padding: const EdgeInsets.all(0.0),
        ),
        child: Text(
          offerName,
          style: const TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        onPressed: () {},
      ));
}
