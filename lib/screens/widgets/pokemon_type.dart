import 'package:flutter/cupertino.dart';
import 'package:layout_pokedex/models/pokemon.dart';
import 'package:layout_pokedex/screens/widgets/attributes.dart';
import 'package:layout_pokedex/style.dart';

class PokemonType extends StatelessWidget {
  final Pokemon _pokemon;

  PokemonType(this._pokemon);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Type",
          style: TextStyle(
            fontSize: 20
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 15
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Attributes(
                attribute: this._pokemon.pokemonType[0],
                attributeColor: grassTypeColor,
              )
            ]  
          ),
        )
      ],
    );  
  }
}