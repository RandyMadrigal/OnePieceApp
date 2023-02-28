import 'package:flutter/material.dart';
import 'package:one_piece_app/details/detail_moment.dart';

class MomentsPage extends StatelessWidget {
  const MomentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    const luffyvskaido = [
      "Luffy vs kaido",
      "https://www.youtube.com/embed/AfZmNBonIeI",
      "images/luffyvskaido.png",
      "Sombrero de Paja Luffy. El futuro Rey de los Piratas - Episode 1015"
    ];

    const zorovsmihawk = [
      "Zoro vs Mihawk",
      "https://www.youtube.com/embed/QULlnhAxmrQ",
      "images/zorovsmihawk.jpg",
      "Hawk-Eyes Mihawk! Swordsman Zoro Falls into the Sea! - Episode 24"
    ];

    const sanjivsluffy = [
      "sanji vs luffy",
      "https://www.youtube.com/embed/zcauE-KIkGs",
      "images/sanjivsluffy.png",
      "A Heartbreaking Duel - Luffy vs. Sanji - Part 2 Episode -808"
    ];

    const luffyvslucci = [
      "Luffy vs rob lucci",
      "https://www.youtube.com/embed/2gBipdzJWBA",
      "images/luffyvslucci.png",
      "Robin's Liberation! Luffy vs. Lucci: Peak of the Decisive Battle - Episode 302"
    ];

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text(
          "One Piece / Best Moments",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
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
            padding: const EdgeInsets.all(8.0),
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 30,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                    colors: [Colors.black, Colors.blueAccent],
                  ),
                ),
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(luffyvskaido[2]),
                      radius: 65,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.cyan,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => DetailMoments(
                              title: luffyvskaido[0],
                              url: luffyvskaido[1],
                              img: luffyvskaido[2],
                              episode: luffyvskaido[3],
                            ),
                          ),
                        );
                      },
                      child: const Text("More details..."),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                    colors: [Colors.black, Colors.blueAccent],
                  ),
                ),
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(zorovsmihawk[2]),
                      radius: 65,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.cyan,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => DetailMoments(
                              title: zorovsmihawk[0],
                              url: zorovsmihawk[1],
                              img: zorovsmihawk[2],
                              episode: zorovsmihawk[3],
                            ),
                          ),
                        );
                      },
                      child: const Text("More details..."),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                    colors: [Colors.black, Colors.blueAccent],
                  ),
                ),
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(sanjivsluffy[2]),
                      radius: 65,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.cyan,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => DetailMoments(
                              title: sanjivsluffy[0],
                              url: sanjivsluffy[1],
                              img: sanjivsluffy[2],
                              episode: sanjivsluffy[3],
                            ),
                          ),
                        );
                      },
                      child: const Text("More details..."),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                    colors: [Colors.black, Colors.blueAccent],
                  ),
                ),
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(luffyvslucci[2]),
                      radius: 65,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.cyan,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => DetailMoments(
                              title: luffyvslucci[0],
                              url: luffyvslucci[1],
                              img: luffyvslucci[2],
                              episode: luffyvslucci[3],
                            ),
                          ),
                        );
                      },
                      child: const Text("More details..."),
                    ),
                  ],
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
