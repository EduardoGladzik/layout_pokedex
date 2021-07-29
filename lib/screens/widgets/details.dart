import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:layout_pokedex/models/pokemon.dart';
import 'package:layout_pokedex/screens/widgets/attributes.dart';
import 'package:layout_pokedex/style.dart';

class Details extends StatelessWidget {
  // final Pokemon pokemonHeight;
  // final Pokemon pokemonWeight;
  // final Pokemon pokemonHability;
  // final Pokemon pokemonType;
  
  // const Details({
  //   required this.pokemonHeight,
  //   required this.pokemonWeight,
  //   required this.pokemonHability,
  //   required this.pokemonType,
  // });

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
            Radius.circular(5)
          )
        ),
        width: MediaQuery.of(context).size.width,

        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Column(
                    children: [
                      Text("Altura",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22
                        )
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "${this._pokemon.pokemonHeight} m",
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        )
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Column(
                    children: [
                      Text(
                        "Tipo",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22
                        ),
                      ),
                      SizedBox(
                        height: 8
                      ),
                       //Criar widget para os tipos de pokemon
                      Attributes(
                        attribute: this._pokemon.pokemonType,
                        typeColor: orangeTheme,
                      ),
                    ],
                  ),  
                ],
              ),
              Column(
                children: [
                  Column(
                    children: [
                      Text(
                        "Peso",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22
                        )
                      ),
                      SizedBox(
                        height: 8
                      ),
                      Text(
                        "${this._pokemon.pokemonWeight} kg",
                        style: TextStyle(
                          fontWeight: FontWeight.bold 
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Column(
                    children: [
                      Text(
                        "Habilidade",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22
                        )
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "${this._pokemon.pokemonHability}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    ); 
  } 
}
