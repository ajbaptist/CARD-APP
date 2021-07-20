import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:card_app/currentBalance.dart';
import 'package:card_app/pharmacy.dart';
import 'package:card_app/transection.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final blackClr = TextStyle(color: Colors.black, fontWeight: FontWeight.bold);
final greyClr = TextStyle(color: Colors.grey, fontWeight: FontWeight.bold);
int myvalue = 0;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Flutter Demo',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: Colors.black,
        selectedIndex: myvalue,
        onItemSelected: (value) {
          setState(() {
            myvalue = value;
          });
        },
        items: [
          BottomNavyBarItem(
              icon: Icon(FontAwesomeIcons.home), title: Text('HOME')),
          BottomNavyBarItem(
              icon: Icon(FontAwesomeIcons.starOfLife), title: Text('OFFICE')),
          BottomNavyBarItem(
              icon: Icon(FontAwesomeIcons.exchangeAlt), title: Text('SETTING'))
        ],
      ),
      backgroundColor: Colors.black26,
      body: Column(
        children: [
          Container(
            child: Padding(
                padding: const EdgeInsets.only(top: 50, right: 30, left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Current Balance'.toUpperCase()),
                    Icon(FontAwesomeIcons.alignCenter)
                  ],
                )),
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Container(
                    height: 510,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: CurrentBalance(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30, left: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('recent transection'.toUpperCase()),
                      Text('view all >'.toUpperCase())
                    ],
                  ),
                ),
                TransectionContainer(),
                Padding(
                  padding: const EdgeInsets.only(top: 10, right: 30, left: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('offers for you'.toUpperCase()),
                      Text('view all >'.toUpperCase())
                    ],
                  ),
                ),
                Pharmacy(),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
