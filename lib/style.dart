import 'package:flutter/painting.dart';

Color redTheme = Color(0xFFE3350D);
Color lightBlueTheme = Color(0xFF31A7D7);
//Types
Color waterTypeColor = Color(0xFF688FF3);
Color fireTypeColor = Color.fromRGBO(253, 125, 36, 1);
Color grassTypeColor = Color.fromRGBO(155, 204, 80, 1);
Color iceTypeColor = Color.fromRGBO(81, 196, 231, 1);
Color poisonTypeColor = Color.fromRGBO(185, 127, 201, 1);
Color bugTypeColor = Color.fromRGBO(114, 159, 63, 1);
Color steelTypeColor = Color.fromRGBO(190, 186, 185, 1);

Gradient flyingTypeColor = LinearGradient(
                             begin: Alignment.topCenter,
                             end: Alignment.bottomCenter,
                             colors: [
                               iceTypeColor,
                               steelTypeColor
                             ]
                            );


