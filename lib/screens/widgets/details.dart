import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:layout_pokedex/models/pokemon.dart';
import 'package:layout_pokedex/screens/widgets/individual_informatios.dart';
import 'package:layout_pokedex/style.dart';

class Details extends StatelessWidget {
  final Pokemon _pokemon;
  Details(this._pokemon);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20
      ),
      child: Container(
        decoration: new BoxDecoration(
          color: lightBlueTheme,
          borderRadius: BorderRadius.all(
            Radius.circular(8)
          )
        ),
        width: MediaQuery.of(context).size.width,

        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Column(
                    children: [
                      IndividualInformations(
                        feature: "Height",
                        answer: "${this._pokemon.pokemonHeight} m",
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    children: [
                      IndividualInformations(
                        feature: "Weight",
                        answer: "${this._pokemon.pokemonWeight} kg",
                      )
                    ]
                  )
                ],
              ),  
              Column(
                children: [
                  Column(
                    children: [
                      IndividualInformations(
                        feature: "Category",
                        answer: "${this._pokemon.category}",
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    children: [
                      IndividualInformations(
                        feature: "Abilities",
                        answer: "${this._pokemon.pokemonHability[0]}",
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}