import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:layout_pokedex/models/pokemon.dart';
import 'package:layout_pokedex/screens/widgets/description.dart';
import 'package:layout_pokedex/screens/widgets/details.dart';
import 'package:layout_pokedex/screens/widgets/weekness.dart';
import 'package:layout_pokedex/style.dart';

class HomePage extends StatelessWidget {
  final pokemon = Pokemon(
    pokemonPhoto: "assets/images/grovyle.png",
    pokemonDescription: "The leaves growing out of Grovyle’s body are convenient for camouflaging it from enemies in the forest. This Pokémon is a master at climbing trees in jungles.",
    pokemonHeight: 0.9,
    pokemonType: ["Grass"],
    pokemonHability: ["Overgrow"],
    pokemonWeight: 21.6,
    pokemonWeekness: ["Fire", "Flying", "Ice", "Poison", "Bug"]
  );

  final String appBarTitle = "Grovyle #253";

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
      body: SingleChildScrollView(
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
            Details(pokemon),
            Weekness(pokemon)
          ],
        ),
      ),
    );
  }
}