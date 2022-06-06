import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class NavbarButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const NavbarButton({Key? key, required this.text, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(Colors.transparent)),
      child: Text(text, style: const TextStyle(color: Colors.black)),
    );
  }
}
