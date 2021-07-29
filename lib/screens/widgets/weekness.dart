import 'package:flutter/cupertino.dart';
import 'package:layout_pokedex/screens/widgets/attributes.dart';
import 'package:layout_pokedex/style.dart';

class Weekness extends StatelessWidget {
  
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
              attribute: "Água",
              typeColor: blueTheme,
            ),
            Attributes(
              attribute: "Terra",
              typeColor: yellowTheme,
            ),
            Attributes(
              attribute: "Rocha",
              typeColor: darkYellowTheme,
            )
          ],
        ),
      ],
    );
  }
}