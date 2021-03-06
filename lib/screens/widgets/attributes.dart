import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Attributes extends StatelessWidget {
  final String attribute;
  final Color attributeColor;
  
  const Attributes({
    required this.attribute,
    required this.attributeColor,
  });

  @override
  Widget build(BuildContext context) {   
    return Container(
      decoration: new BoxDecoration(
        color: this.attributeColor,
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
