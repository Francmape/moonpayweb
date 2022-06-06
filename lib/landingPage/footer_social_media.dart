import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FooterSocialMedia extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  const FooterSocialMedia({Key? key, required this.icon, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(
          color: Colors.white,
          style: BorderStyle.solid,
          width: 1.0,
        ),
      ),
      child:  Icon(icon, color: Colors.white),
    );
  }
}
