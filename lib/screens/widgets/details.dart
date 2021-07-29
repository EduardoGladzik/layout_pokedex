import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:layout_pokedex/style.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20
      ),
      child: Container( //Arredondar as bordas do container
        color: lightBlueTheme,
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
                        "0.6 m",
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
                      Text( //Criar widget para os tipos de pokemon
                        "Fogo",
                        style: TextStyle(
                          color: Colors.white
                        ),
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
                        "8.5 kg",
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
                        "Chama",
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