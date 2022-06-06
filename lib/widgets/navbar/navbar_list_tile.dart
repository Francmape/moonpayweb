import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class NavbarTileList extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const NavbarTileList({Key? key, required this.text, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        contentPadding: EdgeInsets.zero,
        textColor: Colors.black,
        title: Text(text, style: const TextStyle(fontSize: 15.0)));
  }
}
