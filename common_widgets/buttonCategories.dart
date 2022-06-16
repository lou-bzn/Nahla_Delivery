import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategorieButtonWidget extends StatelessWidget {
  final String iconPath;
  final String categorieName;
  final VoidCallback onClicked;

  const CategorieButtonWidget({
    Key? key,
    required this.iconPath,
    required this.categorieName,
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
        child: buildcontentCategorie(),
        onPressed: onClicked,
      ));
  Widget buildcontentCategorie() => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            categorieName,
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          const SizedBox(
            width: 16,
          ),
          SizedBox(
            height: 25,
            width: 25,
            child: SvgPicture.asset(iconPath),
          )
        ],
      );
}
