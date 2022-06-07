import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../buy_crypto/buycrypto_screen_viewmodel.dart';
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
    BuyCryptoScreenViewModel buyCryptoScreenViewModel =
        context.watch<BuyCryptoScreenViewModel>();
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const NavBar(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 70),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 4,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.30,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: const [
                                  Text("Buy BTC",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 18.0)),
                                  SizedBox(width: 15),
                                  Text("Sell BTC",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey,
                                          fontSize: 18.0)),
                                ],
                              ),
                              IconButton(
                                  onPressed: () => buyCryptoScreenViewModel
                                      .setBuyBTCMenuOpened(
                                          !buyCryptoScreenViewModel
                                              .businessMenuOpened),
                                  icon: buyCryptoScreenViewModel
                                          .businessMenuOpened
                                      ? const Icon(Icons.close)
                                      : const Icon(Icons.menu))
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("I want to spend",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 11.0)),
                              const SizedBox(height: 5.0),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.grey.shade200),
                                height: 50,
                                child: Row(children: [
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        
                                        border: InputBorder.none,
                                        filled: true,
                                        hintStyle: TextStyle(
                                            color: Colors.grey.shade200)
                                      ),
                                    ),
                                  ),
                                ]),
                              ),
                            ],
                          )
                        ]),
                      ),
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
