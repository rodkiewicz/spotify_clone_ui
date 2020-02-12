import 'package:flutter/material.dart';
import 'dart:math' as math; 

List<String> podcasts = [
  "podcasts 1",
  "podcasts 2",
  "podcasts 3",
  "podcasts 4",
];
List<String> podcastsAuthors = [
  "Author 1",
  "Author 2",
  "Author 3",
  "Author 4",
];
List<String> podcastsLinks = [
  "https://images.unsplash.com/photo-1581446825137-f07a81380ead?ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80",
  "https://images.unsplash.com/photo-1581357825453-2ca9d6fbaa3f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1300&q=80",
  "https://images.unsplash.com/photo-1581357824910-16c563200d59?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1300&q=80",
  "https://images.unsplash.com/photo-1581357824910-16c563200d59?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1300&q=80",
];

class TopGenres extends StatelessWidget {
  const TopGenres({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Recently played",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18),
            textAlign: TextAlign.left,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Genes("Hip-hop"),
                Genes("Rock", ),
              ],
            ),
            Row(
              children: <Widget>[
                Genes("Indie", ),
                Genes("Pop", ),
              ],
            )
          ],
        ),
      ],
    );
  }
}

class Genes extends StatelessWidget {
  final String title;


  const Genes(this.title,  {
    Key key,
  }) : super(key: key, );
  
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 120,
          child: Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(title, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Image.network("https://www.stickpng.com/assets/images/5856b3d14f6ae202fedf2793.png", fit: BoxFit.fitHeight,))
            ],
          ),
          decoration: BoxDecoration(
              color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0).withOpacity(0.8),
              borderRadius: BorderRadius.circular(16.0)),
        ),
      ),
    );
  }
}
