// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theapp/landingPage/footer.dart';
import 'package:theapp/utils/constants.dart';
import '../buy_crypto/buycrypto_screen_viewmodel.dart';
import '../widgets/navbar/navbar.dart';
import 'buy_btc_input.dart';

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
        child: Column(
          children: [
            NavBar(),
            Expanded(
              child: SingleChildScrollView(
                  child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                child: LayoutBuilder(
                  builder: ((context, constraints) {
                    if (constraints.maxWidth > 800) {
                      return Column(
                        children: [
                          pageTopChild(constraints, buyCryptoScreenViewModel),
                          const SizedBox(height: 100),
                          Footer.appFooter(constraints, context)
                        ],
                      );
                    } else {
                      return Column(
                        children: [
                          pageTopChild(constraints, buyCryptoScreenViewModel),
                          const SizedBox(height: 50),
                          Footer.appFooter(constraints, context)
                        ],
                      );
                    }
                  }),
                ),
              )),
            ),
          ],
        ),
      ),
    );
  }

  Widget pageTopChild(BoxConstraints constraints,
      BuyCryptoScreenViewModel buyCryptoScreenViewModel) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 70),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          elevation: 8,
          child: SizedBox(
            width: constraints.maxWidth > Device.smallScreen
                ? MediaQuery.of(context).size.width * 0.25
                : MediaQuery.of(context).size.width * 0.80,
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
                        onPressed: () =>
                            buyCryptoScreenViewModel.setBuyBTCMenuOpened(
                                !buyCryptoScreenViewModel.businessMenuOpened),
                        icon: buyCryptoScreenViewModel.businessMenuOpened
                            ? const Icon(Icons.close)
                            : const Icon(Icons.menu))
                  ],
                ),
                BuyBTCInput(
                  title: 'I want to spend',
                  description: '',
                  placeHolder: '300',
                  currency: 'EUR',
                  icon: Icons.flag_circle_outlined,
                  currentcyOnTap: () {},
                ),
                SizedBox(height: 30.0),
                BuyBTCInput(
                  title: 'I want to buy',
                  description: '',
                  placeHolder: '0.01026',
                  currency: 'BTC',
                  icon: Icons.currency_bitcoin,
                  currentcyOnTap: () {},
                ),
                SizedBox(height: 30.0),
                BuyBTCInput(
                  title: 'Summary',
                  description: 'Quote updates in 2s',
                  placeHolder: 'You get 0.01026 BTC for €300.00',
                  currency: 'BTC',
                  icon: Icons.currency_bitcoin,
                  currentcyOnTap: () {},
                ),
                SizedBox(height: 130.0),
                SizedBox(
                  height: 50.0,
                  child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              AppColors.appBlue),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ))),
                      child: Row(children: [
                        Expanded(flex: 1, child: SizedBox()),
                        Expanded(
                          flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text("Continue"),
                              Icon(Icons.arrow_forward, size: 20)
                            ],
                          ),
                        ),
                      ])),
                ),
                SizedBox(height: 10.0),
                Text(
                  "By continuing you agree to our cookie policy.",
                  style: TextStyle(fontSize: 11),
                )
              ]),
            ),
          ),
        )
      ],
    );
  }
}
