import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/data/albums.dart';



class RecentlyPlayed extends StatelessWidget {
  const RecentlyPlayed({
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
        SizedBox(
          height: 200,
          width: 100,
          child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(albums.length, (ind) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(0.0),
                        child: Image.network(
                          albumsLinks[ind],
                          height: 140.0,
                          width: 140.0,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Container(
                          constraints: BoxConstraints(maxWidth: 140.0),
                          child: Text(
                            albums[ind],
                            style: TextStyle(
                              fontSize: 10.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.clip,
                            textAlign: TextAlign.left,
                          ),
                        ),
                      )
                    ],
                  ),
                );
              }).toList()),
        ),
      ],
    );
  }
}
