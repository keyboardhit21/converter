import 'package:flutter/material.dart';
import 'package:Converter/widgets/drawer.dart';

class Length extends StatefulWidget {
  @override
  _LengthState createState() => _LengthState();

  const Length({Key key,}) : super(key: key);
}

class _LengthState extends State<Length> {

  String _answer = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inches - Centimeters'),
      ),
      drawer: DrawerWidget(),
      backgroundColor: Colors.orange,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(16.0),
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Inches',
                    labelText: 'Inches',
                  ),
                  onChanged: (text) {
                    if(text.isNotEmpty){
                      calculateCentimeters(text);
                    } else {
                      setState(() {
                        _answer = '0';
                      });
                    }
                  } ,
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Centimeters',
                    labelText: 'Centimeters',
                  ),
                  onChanged: (text) { 
                    if(text.isNotEmpty){
                      calculateInches(text);
                    } else {
                      setState(() {
                        _answer = '0';
                      });
                    }
                  },
                ),
                SizedBox(
                  height: 100.0,
                ),
                Text(
                  _answer,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          ),
        ),
      ),
    );
  }

  void calculateInches(String text) {
    setState(() {
      _answer = (double.parse(text) * 0.393701).toStringAsFixed(2) + " Inches";
    });
  }

  void calculateCentimeters(String text) {
    setState(() {
      _answer = (double.parse(text) * 2.54).toStringAsFixed(2) + " Centimeters";
    });
  }
}