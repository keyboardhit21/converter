import 'package:flutter/material.dart';
import 'package:Converter/pages/distance.dart';
import 'package:Converter/pages/home.dart';
import 'package:Converter/pages/length.dart';
import 'package:Converter/pages/weight.dart';
import 'package:Converter/pages/temperature.dart';
import 'package:Converter/pages/volume.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16.0)
          ),
          ListTile(
            title: Text(
              'HOME',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18.0
              ),
            ),
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) => Home()
              ));
            },
          ),
          Divider(
            color: Colors.white,
            thickness: 0.5,
          ),
          ListTile(
            title: Text(
              'DISTANCE',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18.0
              ),
            ),
            subtitle: Text(
              'Kilometers - Miles',
              style: TextStyle(
                fontSize: 10.0
              )
            ),
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) => Distance()
              ));
            },
          ),
          Divider(
            color: Colors.white,
            thickness: 0.5,
          ),
          ListTile(
            title: Text(
              'LENGTH',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18.0
              ),
            ),
            subtitle: Text(
              'Inches - Centimeters',
              style: TextStyle(
                fontSize: 10.0
              )
            ),
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) => Length()
              ));
            },
          ),
          Divider(
            color: Colors.white,
            thickness: 0.5,
          ),
          ListTile(
            title: Text(
              'WEIGHT',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18.0
              ),
            ),
            subtitle: Text(
              'Kilograms - Pounds',
              style: TextStyle(
                fontSize: 10.0
              )
            ),
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) => Weight()
              ));
            },
          ),
          Divider(
            color: Colors.white,
            thickness: 0.5,
          ),
          ListTile(
            title: Text(
              'TEMPERATURE',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18.0
              ),
            ),
            subtitle: Text(
              'Celsius - Fahrenheit',
              style: TextStyle(
                fontSize: 10.0
              )
            ),
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) => Temperature()
              ));
            },
          ),
          Divider(
            color: Colors.white,
            thickness: 0.5,
          ),
          ListTile(
            title: Text(
              'VOLUME',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18.0
              ),
            ),
            subtitle: Text(
              'Liters - Gallons',
              style: TextStyle(
                fontSize: 10.0
              )
            ),
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) => Volume()
              ));
            },
          ),
          Divider(
            color: Colors.white,
            thickness: 0.5,
          ),
        ],
      ),
    );
  }
}