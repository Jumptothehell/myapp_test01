
import 'package:flutter/material.dart';

class Palette {
  static const MaterialColor kToDark = MaterialColor(
    0xff37bfa7, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xff32ac96), //10%
      100: Color(0xff2c9986), //20%
      200: Color(0xff278675), //30%
      300: Color(0xff217364), //40%
      400: Color(0xff1c6054), //50%
      500: Color(0xff164c43), //60%
      600: Color(0xff103932), //70%
      700: Color(0xff0b2621), //80%
      800: Color(0xff051311), //90%
      900: Color(0xff000000), //100%
    },
  );
} // you can define define int 500 as the default shade and add your lighter tints above and darker tints below.
