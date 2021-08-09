import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IndividualInformations extends StatelessWidget {
  final String feature;
  final String answer;

  const IndividualInformations({
    required this.feature,
    required this.answer
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          this.feature,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          )
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          this.answer,
          style: TextStyle(
            fontSize: 18
          ),
        )
      ],
    );
  }
}