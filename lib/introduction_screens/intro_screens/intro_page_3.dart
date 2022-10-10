import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Lottie.network(
        'https://assets5.lottiefiles.com/packages/lf20_ezzj68jn.json',
      ),
    );
  }
}
