import 'package:flutter/material.dart';

class BusinessPopupMenuWeb extends StatelessWidget {
  const BusinessPopupMenuWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      offset: const Offset(-10, 40),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: TextButton(
          onPressed: null,
          onHover: (_) {},
          child: Row(
            children: const [
              Text("Business", style: TextStyle(color: Colors.black)),
              Icon(Icons.arrow_drop_down, color: Colors.black)
            ],
          )),
      itemBuilder: (context) => [
        PopupMenuItem(
            enabled: false,
            padding: const EdgeInsets.all(0.0),
            child: SizedBox(
              width: 250,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 25.0),
                    child: Column(
                      children: [
                        Row(children: const [
                          Text("Products",
                              style: TextStyle(color: Colors.black))
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
                      ],
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    padding: const EdgeInsets.only(left: 25.0, bottom: 30.0),
                    width: double.infinity,
                    color: Colors.grey.shade200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(height: 20.0),
                        Text("Case Studies",
                            style:
                                TextStyle(color: Colors.black, fontSize: 13)),
                        SizedBox(height: 15.0),
                        Text("Bitcoin",
                            style:
                                TextStyle(color: Colors.black, fontSize: 13)),
                        SizedBox(height: 10.0),
                        Text("BRD",
                            style:
                                TextStyle(color: Colors.black, fontSize: 13)),
                        SizedBox(height: 10.0),
                        Text("Changelly",
                            style: TextStyle(color: Colors.black, fontSize: 13))
                      ],
                    ),
                  )
                ],
              ),
            )),
      ],
    );
  }
}
