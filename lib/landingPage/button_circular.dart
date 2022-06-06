import 'package:flutter/material.dart';

class CircularWhiteButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const CircularWhiteButton({Key? key, required this.text, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
          child: Text(
            text,
            style: const TextStyle(color: Colors.black),
          ),
        ));
  }
}
