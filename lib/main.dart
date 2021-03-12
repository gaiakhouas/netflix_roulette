import "package:flutter/material.dart";
import 'package:roulette_netflix/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      const PrimaryColor = const Color(0xFF151026);
    return MaterialApp(
      title: "Ma roulette netflix",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: PrimaryColor,
        primaryTextTheme: TextTheme(
            headline6: TextStyle(
              fontFamily: 'Bebas Neue',
              color: Colors.red
              )
              )
        ),
      home: HomeScreen(), 
    );
  }
}
