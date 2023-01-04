import 'package:flutter/material.dart';

//-----------------------urls-----------------------

//-----------------------orientation-----------------------

Orientation getOrientation(BuildContext context) {
  return MediaQuery.of(context).orientation;
}

//----------------API Key--------------//

//-----------------------headers-----------------------

//----------------------loader----------------------

//-----------------------colors-----------------------

Color primaryColor = const Color.fromRGBO(255, 224, 153, 1);
Color contentColor = const Color.fromRGBO(131, 119, 105, 1);
//-----------------------heigth/width-----------------------

height(context) => MediaQuery.of(context).size.height / 100;
width(context) => MediaQuery.of(context).size.width / 100;

//-----------------------styles-----------------------

TextStyle bodyStyle = TextStyle(
  color: contentColor,
  fontSize: 18,
  letterSpacing: 0.24,
  fontWeight: FontWeight.w400,
);

TextStyle headStyle = const TextStyle(
  color: Color.fromRGBO(25, 25, 25, 1),
  fontSize: 16,
  letterSpacing: 1.18,
  fontWeight: FontWeight.w500,
);
