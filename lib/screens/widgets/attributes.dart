import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Attributes extends StatelessWidget {
  final String attribute;
  final Color typeColor;
  
  const Attributes({
    required this.attribute,
    required this.typeColor,
  });

  @override
  Widget build(BuildContext context) {   
    return Container(
      decoration: new BoxDecoration(
        color: this.typeColor,
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
