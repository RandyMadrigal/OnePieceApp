import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:one_piece_app/views/About_page.dart';
import 'package:one_piece_app/views/characters_page.dart';
import 'package:one_piece_app/views/hireMe_page.dart';
import 'package:one_piece_app/views/moments_page.dart';
import 'package:one_piece_app/views/more_Info_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 10,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/wallpaper.jpg"), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "images/one_piece_logo.png",
            ),
            const SizedBox(
              height: 5,
            ),
            Image.asset(
              "images/luffy_one.gif",
            )
          ],
        ),
      ),
      floatingActionButton: SpeedDial(
        icon: Icons.more_horiz,
        backgroundColor: Colors.cyanAccent,
        overlayColor: Colors.black,
        overlayOpacity: 0.4,
        children: [
          SpeedDialChild(
            backgroundColor: Colors.white,
            child: const CircleAvatar(
              backgroundImage: AssetImage("icons/personajes.png"),
            ),
            label: "Characters",
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CharacterPage(),
                ),
              ),
            },
          ),
          SpeedDialChild(
            backgroundColor: Colors.red,
            child: const CircleAvatar(
              backgroundImage: AssetImage("icons/vs.png"),
            ),
            label: "Moments",
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MomentsPage(),
                ),
              ),
            },
          ),
          SpeedDialChild(
            backgroundColor: Colors.pink,
            child: const Icon(Icons.add),
            label: "More info",
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MoreInfoPage(),
                ),
              ),
            },
          ),
          SpeedDialChild(
            backgroundColor: Colors.yellow,
            child: const CircleAvatar(
              backgroundImage: AssetImage("icons/lucha.png"),
            ),
            label: "Why one piece?",
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AboutMePage(),
                ),
              ),
            },
          ),
          SpeedDialChild(
            backgroundColor: Colors.white,
            child: const Icon(Icons.person_pin),
            label: "Contact me",
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HireMePage(),
                ),
              ),
            },
          ),
        ],
      ),
    );
  }
}
