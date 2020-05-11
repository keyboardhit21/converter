import 'package:flutter/material.dart';
import 'package:Converter/widgets/drawer.dart';

class Weight extends StatefulWidget {
  @override
  _WeightState createState() => _WeightState();

  const Weight({Key key}) : super(key: key);
}

class _WeightState extends State<Weight> {

  String _answer = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kilograms - Pounds'),
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
                    hintText: 'Kilograms',
                    labelText: 'Kilograms',
                  ),
                  onChanged: (text) {
                    if(text.isNotEmpty){
                      calculatePounds(text);
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
                    hintText: 'Pounds',
                    labelText: 'Pounds',
                  ),
                  onChanged: (text) { 
                    if(text.isNotEmpty){
                      calculateKilograms(text);
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

  void calculatePounds(String text) {
    setState(() {
      _answer = (double.parse(text) * 2.20462).toStringAsFixed(2) + " Pounds";
    });
  }

  void calculateKilograms(String text) {
    setState(() {
      _answer = (double.parse(text) * 0.453592).toStringAsFixed(2) + " Kilograms";
    });
  }
}