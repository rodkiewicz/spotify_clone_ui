import 'package:flutter/material.dart';
import 'dart:math' as math; 



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
            "Your top genres",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 15),
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
              borderRadius: BorderRadius.circular(6.0)),
        ),
      ),
    );
  }
}
