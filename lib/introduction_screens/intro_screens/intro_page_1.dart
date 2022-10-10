import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      child: Lottie.network(
        'https://assets5.lottiefiles.com/packages/lf20_5e7wgehs.json',
      ),
    );
  }
}
