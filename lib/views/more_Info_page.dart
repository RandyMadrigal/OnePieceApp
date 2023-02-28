import 'package:flutter/material.dart';

class MoreInfoPage extends StatelessWidget {
  const MoreInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    const String argument =
        "One Piece (stylized in all caps) is a Japanese anime television"
        " series produced by Toei Animation that premiered on Fuji TV in October 1999. It is"
        " based on Eiichiro Oda's manga series of the same name. The story follows the adventures of"
        " Monkey D. Luffy, a boy whose body gained the properties of rubber after unintentionally"
        " eating a Devil Fruit. With his crew of pirates, named the Straw Hat Pirates, Luffy explores"
        " the Grand Line in search of the world's ultimate treasure known as 'One Piece' in order to"
        " become the next Pirate King";

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text("About One Piece."),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 20,
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
            const Text(
              argument,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Manga Written by: Eiichiro Oda.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            _buildTable()
          ],
        ),
      ),
    );
  }
}

//Elementos / Items de la tabla.
class Info {
  final String name;
  final String caps;

  Info(this.name, this.caps);
}

//Valores de la tabla
final List<Info> _infoItems = [
  Info("East Blue", "1-61"),
  Info("Entering into the Grand Line", "62-77"),
  Info("Introducing Chopper at the Winter Island", "78-91"),
  Info("Arrival in Alabasta, Fierce Fighting in Alabasta", "92-130"),
  Info("Dreams!, The Zenny Pirate Crew Sortie!, Beyond the Rainbow", "131-143"),
  Info("Sky Island ~ Skypiea, The Golden Bell", "144-195"),
  Info("Escape! The Marine Fortress & The Foxy Pirate Crew", "196-228"),
  Info("Water Seven", "229-263"),
  Info("Enies Lobby", "264-336"),
  Info("Thriller Bark	", "337-381"),
  Info("Sabaody Archipelago", "382-407"),
  Info("Island of Women	", "408-421"),
  Info("Impel Down	", "422-456"),
  Info("Marineford	", "457-516"),
  Info("Fishman Island	", "517-578"),
  Info("Punk Hazard	", "579-628"),
  Info("Dressrosa", "629-746"),
  Info("Zou	", "747-782"),
  Info("Whole Cake Island", "783-891"),
  Info("Wano Country", "892-present"),
];

//widget de la tabla
Widget _buildTable() {
  return DataTable(
    dataRowHeight: 70.0,
    dataTextStyle: const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 15,
    ),
    columns: const <DataColumn>[
      DataColumn(
        label: Text(
          "Seasson name",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        tooltip: "Seasson name",
      ),
      DataColumn(
        label: Text(
          "Episodes",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        tooltip: "Episodes",
      ),
    ],
    rows: _infoItems.map<DataRow>((Info infoItem) {
      return DataRow(
        cells: <DataCell>[
          DataCell(
            Text(infoItem.name),
          ),
          DataCell(
            Text(infoItem.caps),
          ),
        ],
      );
    }).toList(),
  );
}
