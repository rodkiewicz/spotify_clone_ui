import 'package:flutter/material.dart';

List<String> albums = [
  "100 dni do deadlineu",
  "Wszystkie drogi prowadzą do stackoverflow",
  "CRUD",
  "Chillerex i utopix"
];
List<String> albumsLinks = [
  "https://images.unsplash.com/photo-1579693207456-a3c037d9a8d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80",
  "https://images.unsplash.com/photo-1579707812346-7ad7a0997f8e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1300&q=80",
  "https://images.unsplash.com/photo-1579714996298-5f25255e98a4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80",
  "https://images.unsplash.com/photo-1579765955778-3c78ba1d9481?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2645&q=80",
];

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
