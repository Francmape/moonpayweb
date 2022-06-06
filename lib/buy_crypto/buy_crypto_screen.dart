import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/navbar/navbar.dart';

class BuyCryptoScreen extends StatefulWidget {
  static const routeName = '/buy_crypto_screen';
  const BuyCryptoScreen({Key? key}) : super(key: key);

  @override
  State<BuyCryptoScreen> createState() => _BuyCryptoScreenState();
}

class _BuyCryptoScreenState extends State<BuyCryptoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              NavBar(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 1,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: Column(children: [],),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
