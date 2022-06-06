import 'package:flutter/material.dart';

import '../../landingPage/landing_screen_viewmodel.dart';
import 'navbar_list_tile.dart';

class NavbarExpansioMenuMobile extends StatelessWidget {
  final LandingScreenViewModel landingScreenViewModel;
  const NavbarExpansioMenuMobile({Key? key, required this.landingScreenViewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      animationDuration: const Duration(milliseconds: 500),
      expandedHeaderPadding: EdgeInsets.zero,
      elevation: 0.0,
      children: [
        ExpansionPanel(
          body: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NavbarTileList(text: "Buy Crypto", onTap: () {}),
                ExpansionTile(
                  tilePadding: const EdgeInsets.only(left: 0),
                  title:
                      const Text("Business", style: TextStyle(fontSize: 15.0)),
                  expandedCrossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: const [
                      Text("Products", style: TextStyle(color: Colors.black))
                    ]),
                    const ListTile(
                      contentPadding: EdgeInsets.zero,
                      iconColor: Colors.black,
                      textColor: Colors.black,
                      leading: Icon(Icons.wallet, size: 20),
                      title: Text("On and Off ramps",
                          style: TextStyle(fontSize: 15.0)),
                    ),
                    const ListTile(
                      contentPadding: EdgeInsets.zero,
                      iconColor: Colors.black,
                      textColor: Colors.black,
                      leading: Icon(Icons.image, size: 20),
                      title: Text("NFT Checkout",
                          style: TextStyle(fontSize: 15.0)),
                    ),
                    const SizedBox(height: 20.0),
                    Row(
                      children: [
                        TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.grey.shade200),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                ))),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 15.0),
                              child: Text(
                                "Partner login",
                                style: TextStyle(color: Colors.black),
                              ),
                            )),
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    const Text("Case Studies",
                        style: TextStyle(color: Colors.black, fontSize: 13)),
                    const SizedBox(height: 15.0),
                    const Text("Bitcoin",
                        style: TextStyle(color: Colors.black, fontSize: 13)),
                    const SizedBox(height: 10.0),
                    const Text("BRD",
                        style: TextStyle(color: Colors.black, fontSize: 13)),
                    const SizedBox(height: 10.0),
                    const Text("Changelly",
                        style: TextStyle(color: Colors.black, fontSize: 13))
                  ],
                ),
                NavbarTileList(text: "About", onTap: () {}),
                NavbarTileList(text: "Careers", onTap: () {}),
                NavbarTileList(text: "Blog", onTap: () {}),
                NavbarTileList(text: "Help Center", onTap: () {}),
              ],
            ),
          ),
          headerBuilder: (BuildContext context, bool isExpanded) {
            return SizedBox();
          },
          isExpanded: landingScreenViewModel.businessMobileMenuOpened,
        )
      ],
    );
  }
}
