import 'package:flutter/material.dart';
import 'package:Converter/pages/distance.dart';
import 'package:Converter/pages/length.dart';
import 'package:Converter/pages/weight.dart';
import 'package:Converter/pages/temperature.dart';
import 'package:Converter/pages/volume.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.all(16.0),
              sliver: SliverGrid.count(
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                crossAxisCount: 2,
                children: <Widget>[
                  FlatButton(
                    color: Colors.lightBlue[400],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                        'Kilometers',
                        style: TextStyle(
                          color: Colors.white,
                        )
                        ),
                        Icon(
                          Icons.all_inclusive,
                          color: Colors.white,
                        ),
                        Text(
                          'Miles',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    shape: ContinuousRectangleBorder(
                      side: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context, MaterialPageRoute(
                          builder: (context) => Distance()
                        )
                      );
                    },
                  ),
                  FlatButton(
                    color: Colors.lightGreen[400],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                        'Inches',
                        style: TextStyle(
                          color: Colors.white,
                        )
                        ),
                        Icon(
                          Icons.all_inclusive,
                          color: Colors.white,
                        ),
                        Text(
                          'Centimeters',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    shape: ContinuousRectangleBorder(
                      side: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) => Length()
                      ));
                    },
                  ),
                  FlatButton(
                    color: Colors.yellow[600],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                        'Kilograms',
                        style: TextStyle(
                          color: Colors.white,
                        )
                        ),
                        Icon(
                          Icons.all_inclusive,
                          color: Colors.white,
                        ),
                        Text(
                          'Pounds',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    shape: ContinuousRectangleBorder(
                      side: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) => Weight()
                      ));
                    },
                  ),
                  FlatButton(
                    color: Colors.pink[400],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                        'Celsius',
                        style: TextStyle(
                          color: Colors.white,
                        )
                        ),
                        Icon(
                          Icons.all_inclusive,
                          color: Colors.white,
                        ),
                        Text(
                          'Fahrenheit',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    shape: ContinuousRectangleBorder(
                      side: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) => Temperature()
                      ));
                    },
                  ),
                  FlatButton(
                    color: Colors.orange[400],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                        'Liters',
                        style: TextStyle(
                          color: Colors.white,
                        )
                        ),
                        Icon(
                          Icons.all_inclusive,
                          color: Colors.white,
                        ),
                        Text(
                          'Gallon',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    shape: ContinuousRectangleBorder(
                      side: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) => Volume()
                      ));
                    },
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}