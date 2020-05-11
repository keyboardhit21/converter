import 'package:flutter/material.dart';
import 'package:Converter/widgets/drawer.dart';

class Distance extends StatefulWidget {
  @override
  _DistanceState createState() => _DistanceState();

  const Distance({Key key,}) : super(key: key);
}

class _DistanceState extends State<Distance> {

  String _answer = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kilometer - Miles'),
      ),
      backgroundColor: Colors.orange,
      drawer: DrawerWidget(),
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
                    hintText: 'Kilometers',
                    labelText: 'Kilometers',
                  ),
                  onChanged: (text) {
                    if(text.isNotEmpty){
                      calculateMiles(text);
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
                    hintText: 'Miles',
                    labelText: 'Miles',
                  ),
                  onChanged: (text) { 
                    if(text.isNotEmpty){
                      calculateKilometers(text);
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

  void calculateMiles(String text) {
    setState(() {
      _answer = (double.parse(text) * 0.621371).toStringAsFixed(2) + " Miles";
    });
  }

  void calculateKilometers(String text) {
    setState(() {
      _answer = (double.parse(text) * 1.60934).toStringAsFixed(2) + " Kilometers";
    });
  }
}