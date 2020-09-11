import 'dart:math';
import 'package:toast/toast.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: HomeScreenWidget()));

class HomeScreenWidget extends StatefulWidget {
  @override
  _HomeScreenWidgetState createState() => _HomeScreenWidgetState();
}

class _HomeScreenWidgetState extends State<HomeScreenWidget> {
  Color appBarBackgroundColor = Colors.yellow[700];
  Color bodyTextColor = const Color.fromARGB(255, 0, 0, 0);
  Color bodyBackgroundColor = const Color.fromARGB(255, 255, 255, 255);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Test App'),
              backgroundColor: appBarBackgroundColor,
            ),
            body: Container(
              color: bodyBackgroundColor,
              child: InkWell(
                onTap: () {
                  setState(() {
                    bodyBackgroundColor =
                        Color.fromARGB(255, Random().nextInt(255),
                            Random().nextInt(255), Random().nextInt(255));
                    bodyTextColor =
                        Color.fromARGB(255, Random().nextInt(255),
                            Random().nextInt(255), Random().nextInt(255));
                    Toast.show("Colors changed", context,
                        duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
                  });
                },
                child: Center(
                  child: Text("Hey there!",
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: bodyTextColor)),
                ),
              ),
            )));
  }
}
