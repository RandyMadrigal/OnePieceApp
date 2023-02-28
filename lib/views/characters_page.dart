import 'package:flutter/material.dart';
import 'package:one_piece_app/details/detail_character.dart';

class CharacterPage extends StatelessWidget {
  const CharacterPage({super.key});

  @override
  Widget build(BuildContext context) {
    const luffy = [
      "Monkey D. Luffy",
      "images/Character_luffy.jpg",
      "Monkey D. Luffy, also known as 'Straw Hat Luffy'"
          " and commonly as 'Straw Hat', is the main protagonist of the"
          " manga and anime, One Piece. He is the founder and captain of the"
          " increasingly infamous and powerful Straw Hat Pirates, as well as the most"
          " powerful of its top fighters. He desires to find the legendary treasure left"
          " behind by the late Gol D. Roger and thereby become the Pirate King, which would"
          " help facilitate an unknown dream of his that he has told only to Shanks, his brothers"
          " and crew. He believes that being the Pirate King means having the most freedom in the world.",
      "3,000,000,000",
    ];

    const zoro = [
      "Roronoa Zoro",
      "images/Character_zoro.jpg",
      "Roronoa Zoro, also known as 'Pirate Hunter' Zoro, is the combatant"
          " of the Straw Hat Pirates, one of their two swordsmen, one of the Senior Officers"
          " of the Straw Hat Grand Fleet, and is publicly recognized as the right-hand man of"
          " his crew's captain Monkey D. Luffy.Formerly a bounty hunter,he is the second"
          " member of Luffy's crew and the first to join it, doing so in the Romance Dawn Arc.",
      "1,111,000,000",
    ];

    const sanji = [
      "Vinsmoke Sanji",
      "images/Character_sanji.png",
      "'Black Leg' Sanji, born as Vinsmoke Sanji, is the cook of the Straw Hat Pirates"
          " and one of the Senior Officers of the Straw Hat Grand Fleet. He is the fifth member"
          " of the crew and the fourth to join, doing so at the end of the Baratie Arc.",
      "1,032,000,000",
    ];

    const jinbe = [
      "Jinbe",
      "images/Character_jimbe.png",
      "'Knight of the Sea' Jinbe is the helmsman of the Straw Hat Pirates"
          " and one of the Senior Officers of the Straw Hat Grand Fleet. He is"
          " the tenth member of the crew and the ninth to join, doing so during the Wano Country Arc.",
      "1,100,000,000",
    ];

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text(
          "One piece / Characters",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "images/one_piece_logo.png",
                height: 100,
              ),
              const SizedBox(
                height: 150,
              ),
            ],
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              children: [
                //Luffy
                Card(
                  shadowColor: Colors.green,
                  elevation: 10,
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.blueGrey, Colors.blueAccent],
                      ),
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          luffy[0],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        CircleAvatar(
                          backgroundImage: AssetImage(luffy[1]),
                          radius: 50,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueGrey,
                          ),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => DetailCharacter(
                                    name: luffy[0],
                                    img: luffy[1],
                                    description: luffy[2],
                                    bounty: luffy[3]),
                              ),
                            );
                          },
                          child: const Text("More details..."),
                        ),
                      ],
                    ),
                  ),
                ),
                //Zoro
                Card(
                  shadowColor: Colors.green,
                  elevation: 10,
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.blueGrey, Colors.blueAccent],
                      ),
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          zoro[0],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        CircleAvatar(
                          backgroundImage: AssetImage(zoro[1]),
                          radius: 50,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueGrey,
                          ),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => DetailCharacter(
                                    name: zoro[0],
                                    img: zoro[1],
                                    description: zoro[2],
                                    bounty: zoro[3]),
                              ),
                            );
                          },
                          child: const Text("More details..."),
                        ),
                      ],
                    ),
                  ),
                ),
                //Sanji
                Card(
                  shadowColor: Colors.green,
                  elevation: 10,
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.blueGrey, Colors.blueAccent],
                      ),
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          sanji[0],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        CircleAvatar(
                          backgroundImage: AssetImage(sanji[1]),
                          radius: 50,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueGrey,
                          ),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => DetailCharacter(
                                    name: sanji[0],
                                    img: sanji[1],
                                    description: sanji[2],
                                    bounty: sanji[3]),
                              ),
                            );
                          },
                          child: const Text("More details..."),
                        ),
                      ],
                    ),
                  ),
                ),
                //Jinbe
                Card(
                  shadowColor: Colors.green,
                  elevation: 10,
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.blueGrey, Colors.blueAccent],
                      ),
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          jinbe[0],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        CircleAvatar(
                          backgroundImage: AssetImage(jinbe[1]),
                          radius: 50,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueGrey,
                          ),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => DetailCharacter(
                                    name: jinbe[0],
                                    img: jinbe[1],
                                    description: jinbe[2],
                                    bounty: jinbe[3]),
                              ),
                            );
                          },
                          child: const Text("More details..."),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
