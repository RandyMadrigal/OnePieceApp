import 'package:flutter/material.dart';

class DetailCharacter extends StatelessWidget {
  String name, img, description, bounty;

  DetailCharacter(
      {required this.name,
      required this.img,
      required this.description,
      required this.bounty});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("$name / $bounty "),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              shadowColor: Colors.green,
              elevation: 50,
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blueGrey, Colors.blueAccent],
                  ),
                ),
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [Image.asset(img)],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              description,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
