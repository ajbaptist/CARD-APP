import 'package:card_app/main.dart';
import 'package:flutter/material.dart';

class Pharmacy extends StatelessWidget {
  const Pharmacy({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
            height: 200,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  'assets/pic.jpg',
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Text(
                  'Appolo pharmacy',
                  style: blackClr,
                  textAlign: TextAlign.center,
                ),
                Text(
                  'upto 15% off at appolo pharmacy',
                  style: greyClr,
                  textAlign: TextAlign.center,
                )
              ],
            )),
      ),
    );
  }
}
