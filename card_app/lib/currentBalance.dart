import 'package:card_app/data.dart';
import 'package:card_app/main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CurrentBalance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'YESBANK - 2134',
                  style: blackClr,
                ),
                Icon(
                  FontAwesomeIcons.ccVisa,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) => Card(
                    color: Colors.white,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.tealAccent,
                        child: Icon(FontAwesomeIcons.moneyBillWave),
                      ),
                      title: Text(
                        value[index],
                        style: blackClr,
                      ),
                      subtitle: Text(
                        cName[index],
                        style: greyClr,
                      ),
                      trailing: Text('manage >', style: greyClr),
                    ),
                  )),
        ),
      ],
    );
  }
}
