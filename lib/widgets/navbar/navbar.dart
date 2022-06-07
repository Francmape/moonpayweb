import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theapp/landingPage/landing_screen.dart';
import 'package:theapp/main.dart';
import '../../buy_crypto/buy_crypto_screen.dart';
import '../../widgets/navbar/business_menu_web.dart';

import '../../landingPage/landing_screen_viewmodel.dart';
import 'business_menu_mobile.dart';
import 'button_navbar.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        if (constraints.maxWidth > 800) {
          return const WebNavBar();
        } else {
          return const MobileNavBar();
        }
      }),
    );
  }
}

class WebNavBar extends StatelessWidget {
  const WebNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LandingScreenViewModel landingScreenViewModel =
        context.watch<LandingScreenViewModel>();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              TextButton(
                  onPressed: () =>
                      Navigator.of(context).pushNamed(HomePage.routeName),
                  child: const Text("MoonPay",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 25.0))),
              const SizedBox(width: 30),
              NavbarButton(
                  text: "Buy crypto",
                  onTap: () => Navigator.of(context)
                      .pushNamed(BuyCryptoScreen.routeName)),
              const SizedBox(width: 30),
              const BusinessPopupMenuWeb()
            ],
          ),
          Row(
            children: [
              NavbarButton(text: "About us", onTap: () {}),
              const SizedBox(width: 30),
              NavbarButton(text: "Careers", onTap: () {}),
              const SizedBox(width: 30),
              NavbarButton(text: "Blog", onTap: () {}),
              const SizedBox(width: 30),
              NavbarButton(text: "Help Center", onTap: () {}),
              const SizedBox(width: 30),
            ],
          )
        ],
      ),
    );
  }
}

class MobileNavBar extends StatelessWidget {
  const MobileNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LandingScreenViewModel landingScreenViewModel =
        context.watch<LandingScreenViewModel>();
    return Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              TextButton(
                  onPressed: () {},
                  child: const Text("MoonPay",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 25.0))),
              IconButton(
                  onPressed: () {
                    landingScreenViewModel.setBusinessMobileMenuOpened(
                        !landingScreenViewModel.businessMobileMenuOpened);
                  },
                  icon: const Icon(Icons.menu))
            ]),
            NavbarExpansioMenuMobile(
                landingScreenViewModel: landingScreenViewModel)
          ],
        ));
  }
}
