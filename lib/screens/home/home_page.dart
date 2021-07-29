import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:layout_pokedex/models/pokemon.dart';
import 'package:layout_pokedex/screens/widgets/description.dart';
import 'package:layout_pokedex/style.dart';

class HomePage extends StatelessWidget {
  final pokemon = Pokemon(
    pokemonPhoto: "assets/images/charmander.png",
    pokemonName: "Charmander #004",
    pokemonDescription: "Tem preferência por coisas quentes. Quando chove, diz-se que o vapor jorra da ponta de sua cauda.",
    pokemonHeight: 0.6,
    pokemonType: "Fogo",
    pokemonHability: "Chama",
    pokemonWeight: 8.5,
    pokemonWeekness: ["Água", "Terra", "Rocha"]
  );

  final String appBarTitle = "Charmander #004";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        backgroundColor: redTheme,
        title: Text(
          this.appBarTitle
        ),
        leading: Image.asset("assets/images/logo.png"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20
        ),
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20
                ),
                child: Image.asset(pokemon.pokemonPhoto),
              )
            ),
            Description(pokemon),

          ],
        ),
      ),
    );
  }
}