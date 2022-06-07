import 'package:flutter/material.dart';

import '../utils/constants.dart';
import 'button_circular.dart';
import 'footer_social_media.dart';

class Footer {
  static Widget appFooter(BoxConstraints constraints, BuildContext context) {
    return Container(
      color: Colors.black,
      width: double.infinity,
      child: constraints.maxWidth > Device.smallScreen
          ? Column(
              children: [
                footerTop(),
                const Divider(),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: Row(children: [
                        Expanded(child: footerLeft(context)),
                        Expanded(child: footerRight())
                      ]))
                    ]),
              ],
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                footerTop(),
                const Divider(),
                footerLeft(context),
                footerRight(),
              ],
            ),
    );
  }

  static Widget footerLeft(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(60.0),
      child: Column(
        children: [
          GridView.builder(
            scrollDirection: Axis.vertical,
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            itemCount: 12,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              childAspectRatio: MediaQuery.of(context).size.width /
                  (MediaQuery.of(context).size.height / 4),
            ),
            itemBuilder: (BuildContext context, int index) {
              return TextButton(
                onPressed: () {},
                child: const Text("Cryptos",
                    style: TextStyle(color: Colors.white)),
              );
            },
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              const Icon(Icons.ac_unit_rounded, color: Colors.white),
              const SizedBox(width: 5.0),
              CircularWhiteButton(text: "Buy crypto", onTap: () {}),
              const SizedBox(width: 5.0),
              CircularWhiteButton(text: "Sell crypto", onTap: () {})
            ],
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              FooterSocialMedia(icon: Icons.facebook, onTap: () {}),
              const SizedBox(width: 10),
              FooterSocialMedia(icon: Icons.facebook, onTap: () {}),
              const SizedBox(width: 10),
              FooterSocialMedia(icon: Icons.facebook, onTap: () {}),
              const SizedBox(width: 10),
              FooterSocialMedia(icon: Icons.facebook, onTap: () {}),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              Flexible(
                child: Text(
                  """Copyright 2022 Moon Pay Limited. All rights reserved.\nMoonPay USA LLC is a registered money service business (NMLS ID: 2071245).\nFor Law Enforcement requests please direct your official document to our compliance team here.""",
                  style: TextStyle(color: Colors.grey[400], fontSize: 13),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  static Widget footerRight() {
    return Padding(
      padding: const EdgeInsets.all(60.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Subscribe to our newsletter",
              style: TextStyle(color: Colors.white)),
          const SizedBox(height: 20),
          const Text("Email", style: TextStyle(color: Colors.white)),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0)),
                filled: true,
                hintStyle: TextStyle(color: Colors.grey[800]),
                fillColor: Colors.white70),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: SizedBox(
                    height: 50,
                    child:
                        CircularWhiteButton(text: "Subscribe", onTap: () {})),
              ),
              Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Checkbox(
                          checkColor: Colors.grey,
                          value: false,
                          onChanged: (status) {}),
                      const SizedBox(width: 10),
                      Flexible(
                        child: Text(
                          """Check this box to receive communications from MoonPay. You can unsubscribe at any time. We look after your data - see our privacy policy.*""",
                          style:
                              TextStyle(color: Colors.grey[400], fontSize: 12),
                          textAlign: TextAlign.left,
                        ),
                      )
                    ],
                  )),
            ],
          )
        ],
      ),
    );
  }

  static Widget footerTop() {
    return Padding(
      padding: const EdgeInsets.all(60.0),
      child: Wrap(
        spacing: 8.0, // gap between adjacent chips
        runSpacing: 8.0, // gap between lines
        children: MyLists.list
            .map(
              (e) => TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: const BorderSide(color: Colors.white)))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      e,
                      style: const TextStyle(color: Colors.white),
                    ),
                  )),
            )
            .toList(),
      ),
    );
  }
}
