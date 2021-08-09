import 'package:flutter/cupertino.dart';
import 'package:layout_pokedex/models/pokemon.dart';
import 'package:layout_pokedex/screens/widgets/attributes.dart';
import 'package:layout_pokedex/screens/widgets/gradient_attributes.dart';
import 'package:layout_pokedex/style.dart';

class Weekness extends StatelessWidget {
  final Pokemon _pokemon;

  Weekness(this._pokemon);
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 15
              ),
              child: Text(
                "Fraquezas",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),
                ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Attributes(
              attribute: this._pokemon.pokemonWeekness[0],
              attributeColor: fireTypeColor,
            ),
            GradientAttributes(
              attribute: this._pokemon.pokemonWeekness[1],
              gradientAttributeColor: flyingTypeColor
            ),
            Attributes(
              attribute: this._pokemon.pokemonWeekness[2],
              attributeColor: iceTypeColor,
            ),
            Attributes(
              attribute: this._pokemon.pokemonWeekness[3],
              attributeColor: poisonTypeColor,
            ),
            Attributes(
              attribute: this._pokemon.pokemonWeekness[4],
              attributeColor: bugTypeColor,
            ),
          ],
        ),
      ],
    );
  }
}