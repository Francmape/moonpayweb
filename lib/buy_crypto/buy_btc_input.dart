import 'package:flutter/material.dart';

class BuyBTCInput extends StatelessWidget {
  final String title;
  final String description;
  final String placeHolder;
  final IconData icon;
  final String currency;
  final VoidCallback currentcyOnTap;
  const BuyBTCInput(
      {Key? key,
      required this.title,
      required this.description,
      required this.placeHolder,
      required this.icon,
      required this.currency,
      required this.currentcyOnTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 11.0)),
            Text(description,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 11.0)),
          ],
        ),
        const SizedBox(height: 5.0),
        Container(
          padding: const EdgeInsets.all(2.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey.shade200),
          height: 50,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Expanded(
              flex: title != "Summary" ? 2 : 3,
              child: TextField(
                style: const TextStyle(fontSize: 13.0),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    hintText: placeHolder,
                    hintStyle: const TextStyle(color: Colors.black)),
              ),
            ),
            Expanded(
              child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                if (title != "Summary") Icon(icon),
                const SizedBox(width: 5),
                if (title != "Summary")
                  Expanded(
                      child:
                          Text(currency, style: const TextStyle(fontSize: 15))),
                const Icon(Icons.keyboard_arrow_down),
                const SizedBox(width: 10),
              ]),
            ),
          ]),
        ),
      ],
    );
  }
}
