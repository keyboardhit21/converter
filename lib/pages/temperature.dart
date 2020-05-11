import 'package:flutter/material.dart';
import 'package:Converter/widgets/drawer.dart';

class Temperature extends StatefulWidget {
  @override
  _TemperatureState createState() => _TemperatureState();
}

class _TemperatureState extends State<Temperature> {

  String _answer = '0';

  @override
  Widget build(BuildContext context) {
        return Scaffold(
      appBar: AppBar(
        title: Text('Celsius - Fahrenheit'),
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
                    hintText: 'Celsius',
                    labelText: 'Celsius',
                  ),
                  onChanged: (text) {
                    if(text.isNotEmpty){
                      calculateFahrenheit(text);
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
                    hintText: 'Fahrenheit',
                    labelText: 'Fahrenheit',
                  ),
                  onChanged: (text) { 
                    if(text.isNotEmpty){
                      calculateCelsius(text);
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

  void calculateCelsius(String text) {
    setState(() {
      _answer = ((double.parse(text) - 32) * 5/9).toStringAsFixed(2) + " Celsius";
    });
  }

  void calculateFahrenheit(String text) {
    setState(() {
      _answer = ((double.parse(text) * 9/5) + 32).toStringAsFixed(2) + " Fahrenheit";
    });
  }
}