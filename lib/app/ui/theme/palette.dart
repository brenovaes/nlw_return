import 'package:flutter/material.dart';

class Palette {
  static const MaterialColor kToDark = MaterialColor(
    0xff5b3c88, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xFFF0EBFC),
      100: Color(0xFFDACDF7),
      200: Color(0xFFC1ABF2),
      300: Color(0xFFA889ED),
      400: Color(0xFF9570E9),
      500: Color(0xFF8257E5),
      600: Color(0xFF7A4FE2),
      700: Color(0xFF6F46DE),
      800: Color(0xFF653CDA),
      900: Color(0xFF522CD3),
    },
  );
}
