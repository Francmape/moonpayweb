import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theapp/buy_crypto/buy_crypto_screen.dart';
import 'package:theapp/buy_crypto/buycrypto_screen_viewmodel.dart';
import 'package:theapp/landingPage/landing_screen.dart';

import './landingPage/landing_screen_viewmodel.dart';
import './widgets/navbar/navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LandingScreenViewModel()),
        ChangeNotifierProvider(create: (_) => BuyCryptoScreenViewModel()),
      ],
      child: MaterialApp(
        title: 'MoonPay',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
        routes: {
          HomePage.routeName: (context) => const HomePage(),
          BuyCryptoScreen.routeName: (context) => const BuyCryptoScreen(),
        },
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  static const routeName = '/home_screen';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          children: const [
            NavBar(),
            Expanded(
              child: SingleChildScrollView(
                  child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                child: LandingScreen(),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
