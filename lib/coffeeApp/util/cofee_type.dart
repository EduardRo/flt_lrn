import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeeType extends StatelessWidget {
  const CoffeeType({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Cappucino',
        style: GoogleFonts.caveat(
          fontSize: 25,
          color: Colors.grey[400],
        ),
      ),
    );
  }
}
