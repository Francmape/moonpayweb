import 'package:flutter/material.dart';

import '../utils/constants.dart';

class GettingStarted extends StatelessWidget {
  final BoxConstraints constraints;
  const GettingStarted({Key? key, required this.constraints}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 50.0),
        decoration: BoxDecoration(
            color: AppColors.appBlue, borderRadius: BorderRadius.circular(10)),
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(height: 30.0),
            const Text(
              "Get started",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            const SizedBox(height: 10.0),
            GridView.builder(
              scrollDirection: Axis.vertical,
              physics: const ScrollPhysics(),
              shrinkWrap: true,
              itemCount: 6,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:
                    constraints.maxWidth > 400 && constraints.maxWidth < 800
                        ? 2
                        : constraints.maxWidth > 900
                            ? 3
                            : 1,
                childAspectRatio: MediaQuery.of(context).size.width /
                    (MediaQuery.of(context).size.height / 4),
              ),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TextButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.currency_bitcoin_rounded),
                          Text("Buy Crypyo", style: TextStyle()),
                        ],
                      )),
                );
              },
            )
          ],
        ));
  }
}
