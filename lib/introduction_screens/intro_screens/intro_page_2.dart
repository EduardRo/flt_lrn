import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Lottie.network(
        'https://assets5.lottiefiles.com/packages/lf20_jmuq5aha.json',
      ),
    );
  }
}
