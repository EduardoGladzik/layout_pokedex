import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GradientAttributes extends StatelessWidget {
  final String attribute;
  final Gradient gradientAttributeColor;
  
  const GradientAttributes({
    required this.attribute,
    required this.gradientAttributeColor,
  });

  @override
  Widget build(BuildContext context) {   
    return Container(
      decoration: new BoxDecoration(
        gradient: this.gradientAttributeColor,
        borderRadius: BorderRadius.circular(5)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 5
        ),
        child: Column(
          children: [
            Text(
              this.attribute,
              style: TextStyle(
                color: Colors.white
              )
            )
          ],
        ),
      )
    );
  }
}