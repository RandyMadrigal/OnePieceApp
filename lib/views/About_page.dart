import 'dart:ui';
import 'package:flutter/material.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});
  @override
  Widget build(BuildContext context) {
    const String OnePiece =
        "One Piece es un relato épico sobre un niño que navega para convertirse en el rey pirata,"
        " gobernante de todos los mares, y que en sus aventuras se une a otras personas"
        " que tambien quieren cumplir sus sueños.\n\n"
        "One Piece trata sobre el increíblemente importante tema de la amistad y 'nakama'"
        " que se extiende a lo largo de toda la serie. Esto crea un vínculo enorme entre los"
        " piratas y también agrega escenas emocionales a la serie. Además, es increíble cómo"
        " Oda logra dar a cada miembro del equipo el tiempo suficiente para brillar.\n\n"
        "Personalmente creo que el mayor mérito de One Piece es el sistema de lucha,"
        " Las peleas de espadas, los usuarios de la fruta del diablo, los usuarios de haki,"
        " etc. Muchas formas de luchar cada personaje aparece con técnicas de lucha únicas"
        " como la 1ra, 2da, 3ra, 4ta y 5ta marcha de Luffy o Santoryu de Zoro.";

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text(
          "Why One Piece?",
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 5,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/wallpaper.jpg"), fit: BoxFit.cover),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
          child: Column(
            children: [
              Column(
                children: [
                  Image.asset(
                    "images/one_piece_logo.png",
                    height: 120,
                  ),
                  const Text(
                    OnePiece,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
