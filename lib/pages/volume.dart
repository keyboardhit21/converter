import 'package:flutter/material.dart';
import 'package:Converter/widgets/drawer.dart';


class Volume extends StatefulWidget {
  @override
  _VolumeState createState() => _VolumeState();

  const Volume({Key key,}) : super(key: key);
}

class _VolumeState extends State<Volume> {

  String _answer = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liters - Gallons'),
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
                    hintText: 'Liters',
                    labelText: 'Liters',
                  ),
                  onChanged: (text) {
                    if(text.isNotEmpty){
                      calculateGallons(text);
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
                    hintText: 'Gallons',
                    labelText: 'Gallons',
                  ),
                  onChanged: (text) { 
                    if(text.isNotEmpty){
                      calculateLiters(text);
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

  void calculateLiters(String text) {
    setState(() {
      _answer = (double.parse(text) * 3.785).toStringAsFixed(2) + " Liters";
    });
  }

  void calculateGallons(String text) {
    setState(() {
      _answer = (double.parse(text) / 3.785).toStringAsFixed(2) + " Gallons";
    });
  }

}