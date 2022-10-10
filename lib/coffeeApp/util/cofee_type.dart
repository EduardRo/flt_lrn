import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeeType extends StatelessWidget {
  final String coffeeType;
  final bool isSelected;
  final VoidCallback onTap;
  const CoffeeType({
    super.key,
    required this.coffeeType,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          coffeeType,
          style: GoogleFonts.caveat(
            fontSize: 25,
            color: isSelected == true ? Colors.orange : Colors.grey[400],
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
