import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class DetailMoments extends StatefulWidget {
  String title, url, img, episode;

  DetailMoments(
      {super.key,
      required this.title,
      required this.url,
      required this.img,
      required this.episode});

  @override
  State<DetailMoments> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<DetailMoments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Image.asset(
            "images/one_piece_logo.png",
            height: 100,
          ),
          const SizedBox(
            height: 10,
          ),
          Html(data: '''
            <iframe width="420" height="315"
            src="${widget.url}?controls=1">
            </iframe>
                        '''),
          const SizedBox(
            height: 10,
          ),
          Text(
            widget.episode,
            style: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
          )
        ],
      ),
    );
  }
}
