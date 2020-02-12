import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/wigdets/recently_played.dart';
import 'package:spotify_ui_clone/wigdets/top_podcasts.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Builder(builder: (BuildContext ctx) {
          return SingleChildScrollView(
            child: Container(
              height: 1000,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(-2.2, -1.3),
                  end: FractionalOffset.bottomCenter,
                  colors: [Colors.orange, Colors.black],
                  stops: [0, 0.3],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Stack(children: <Widget>[
                    SizedBox(
                      width: 100,
                      height: MediaQuery.of(context).size.height * 0.17,
                    ),
                    Positioned(
                        bottom: 20,
                        right: 20,
                        child: IconButton(
                          icon: Icon(Icons.settings, color: Colors.white60,),
                        )),
                  ]),
                  Container(
                    child: RecentlyPlayed(),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Container(
                    child: TopPodacasts(),
                  ),
                ],
              ),
            ),
          );
        }));
  }
}
