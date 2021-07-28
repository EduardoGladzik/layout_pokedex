import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:layout_pokedex/style.dart';

class HomePage extends StatelessWidget {
  final String appBarTitle = "Charmander 004";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: redTheme,
        title: Text(this.appBarTitle),
        leading: Image.asset("assets/images/logo.png"),
      )
    );
  }
}