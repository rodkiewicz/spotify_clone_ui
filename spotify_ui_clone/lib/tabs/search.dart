import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/wigdets/top_generes.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: 1000,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(-2.0, -1.2),
            end: FractionalOffset.bottomCenter,
            colors: [Colors.white, Colors.black],
            stops: [0, 0.3],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Stack(children: <Widget>[
              SizedBox(
                width: 100,
                height: MediaQuery.of(context).size.height * 0.17,
              ),
            ]),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Text(
                  "Search",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(14.0),
                    filled: true,
                    focusColor: Colors.white,
                    border: new OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(10.0),
                      ),
                    ),
                    fillColor: Colors.white,
                    hintText: '🔍 Artists, songs, or podcats'),
              ),
            ),
            TopGenres(),
          ],
        ),
      ),
    );
  }
}
