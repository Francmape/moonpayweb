import 'package:flutter/material.dart';
import 'package:theapp/landingPage/footer.dart';
import 'package:theapp/utils/constants.dart';
import 'getting_started.dart';

class LandingScreen extends StatelessWidget {

  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        if (constraints.maxWidth > Device.smallScreen) {
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: pageTopChildren(constraints),
              ),
              GettingStarted(constraints: constraints),
              const SizedBox(height: 20),
              Footer.appFooter(constraints, context)
            ],
          );
        } else {
          return Column(
            children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: pageTopChildren(constraints)),
              GettingStarted(constraints: constraints),
              const SizedBox(height: 20),
              Footer.appFooter(constraints, context)
            ],
          );
        }
      }),
    );
  }

  List<Widget> pageTopChildren(BoxConstraints constraints) {
    return [
      Column(
        children: [
          const Text(
            "Crypto just\ngot easy",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 70,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Text(
              "A fast and simple way to buy and sell crypto",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {},
            color: AppColors.appBlue,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(25.0))),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
              child: Text("Buy Crypyo", style: TextStyle(color: Colors.white)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 50),
            child: Text(
              "Trusted by 10M+ people",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Image.asset(
          "assets/images/homePageHero.png",
          width: constraints.maxWidth * 0.5,
        ),
      ),
    ];
  }
}
