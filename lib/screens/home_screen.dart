import "package:flutter/material.dart";
import 'package:roulette_netflix/pages/home_page.dart';
import 'package:roulette_netflix/widgets/appbar_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: HomePage(),
    );
  }
}
