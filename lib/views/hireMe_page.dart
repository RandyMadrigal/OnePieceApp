import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HireMePage extends StatelessWidget {
  const HireMePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text("Contact me!"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: <Widget>[
                _createCard(),
                const SizedBox(
                  height: 30,
                ),
                GradientText(
                  textAlign: TextAlign.center,
                  "I can make your idea come true",
                  style: const TextStyle(
                    textBaseline: TextBaseline.alphabetic,
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                  ),
                  colors: const [
                    Colors.black,
                    Colors.red,
                    Colors.yellow,
                    Colors.green,
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}

Widget _createCard() {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(25),
    ),
    shadowColor: Colors.green,
    elevation: 100,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          colors: [Colors.blueGrey, Colors.blue],
        ),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 20,
      ),
      child: Column(
        children: const <Widget>[
          Text(
            "Software Developer",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          CircleAvatar(
            backgroundImage: AssetImage("images/me.jpg"),
            radius: 100,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Randy Jose Espinal Madrigal",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "RandyMadrigalx12@gmail.com",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Tel: 829-869-5751",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),
  );
}
