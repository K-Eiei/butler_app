import 'package:flutter/material.dart';

const double pi = 3.1415926535897932;

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(0, 0, 0, 110),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [
              Color(0xFF2697FF),
              Color(0xFF7CDCFF),
            ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                transform: GradientRotation(pi / 4))),
        child: Center(
          child: Text(
            'Hello World',
            style: TextStyle(
              fontSize: 48.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ));
  }
}
