import 'package:card_app/main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Transection extends StatelessWidget {
  final IconData iconData;
  final Text text;
  final Text text2;

  Transection(
      {required this.iconData, required this.text, required this.text2});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, left: 15, top: 3, bottom: 5),
      child: Card(
        color: Colors.white,
        child: ListTile(
            leading: Icon(
              iconData,
              size: 30,
              color: Colors.purple,
            ),
            subtitle: Text(
              'SEP 12AM IST ',
              style: greyClr,
            ),
            title: text,
            trailing: text2),
      ),
    );
  }
}

class TransectionContainer extends StatelessWidget {
  const TransectionContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Transection(
          iconData: FontAwesomeIcons.piggyBank,
          text: Text(
            'McDonalds',
            style: blackClr,
          ),
          text2: Text('\$500 >', style: greyClr),
        ),
        Transection(
          iconData: FontAwesomeIcons.shirtsinbulk,
          text: Text(
            'HSM Clothings',
            style: blackClr,
          ),
          text2: Text(
            '\$500 >',
            style: greyClr,
          ),
        ),
        Transection(
          iconData: FontAwesomeIcons.arrowCircleRight,
          text: Text(
            'Exchange from INR',
            style: blackClr,
          ),
          text2: Text('\$500 >', style: greyClr),
        ),
        Transection(
          iconData: Icons.food_bank,
          text: Text(
            'ATTM Withdrawal',
            style: blackClr,
          ),
          text2: Text('\$500 >', style: greyClr),
        ),
      ],
    );
  }
}
