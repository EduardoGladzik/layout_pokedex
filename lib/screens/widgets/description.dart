import 'package:flutter/cupertino.dart';
import 'package:layout_pokedex/models/pokemon.dart';

class Description extends StatelessWidget {
  final Pokemon _pokemonObj;
  
  Description(this._pokemonObj);

  @override
  Widget build(BuildContext context) {
    return Column (
      children: [
        Text(this._pokemonObj.pokemonDescription, style: TextStyle(fontSize: 12))
      ],
    );
  }
}
