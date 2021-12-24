import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: RichText(
          text: TextSpan(
            text: 'Hello ',
            style: TextStyle(
              fontSize: 50,
              color: Colors.red,
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'World ',
                style: TextStyle(
                  color: Colors.green,
                ),
              ),
              TextSpan(
                text: 'Again',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}