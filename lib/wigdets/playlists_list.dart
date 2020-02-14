import 'package:flutter/material.dart';

List<String> albums = [
  "Create playlist",
  "Liked songs",
  "100 dni do matury",
  "Wszystkie drogi prowadzą do dymu",
  "CRUD",
  "Chillerex i utopix",
  "Chillerex i utoapix",
  "Chillerex i utoapix3",
  "Chillerex i utoapixq",
  "Chillerex i utopaix2",
];
List<String> albumsDesc = [
  "",
  "895 songs",
  "by Jan Pierwszy",
  "by Krzysztof Drugi",
  "by Maciej Trzeci",
  "by Piotrek Czwarty",
  "by Piotrek Czwarty",
  "by Piotrek Czwarty",
  "by Piotrek Czwarty",
  "by Piotrek Czwarty",
];
List<String> albumsLinks = [
  "https://images.unsplash.com/photo-1560443794-1333caf35d20?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1275&q=80",
  "https://images.unsplash.com/photo-1571172964533-d2d13d88ce7e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2251&q=80",
  "https://images.unsplash.com/photo-1579707812346-7ad7a0997f8e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1300&q=80",
  "https://images.unsplash.com/photo-1579714996298-5f25255e98a4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80",
  "https://images.unsplash.com/photo-1579765955778-3c78ba1d9481?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2645&q=80",
  "https://images.unsplash.com/photo-1581700575845-b1ecdfb21117?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjc5NjV9&auto=format&fit=crop&w=2000&q=80",
  "https://images.unsplash.com/photo-1581700575845-b1ecdfb21117?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjc5NjV9&auto=format&fit=crop&w=2000&q=80",
  "https://images.unsplash.com/photo-1581700575845-b1ecdfb21117?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjc5NjV9&auto=format&fit=crop&w=2000&q=80",
  "https://images.unsplash.com/photo-1581700575845-b1ecdfb21117?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjc5NjV9&auto=format&fit=crop&w=2000&q=80",
  "https://images.unsplash.com/photo-1581700575845-b1ecdfb21117?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjc5NjV9&auto=format&fit=crop&w=2000&q=80",
];

class PlaylistsList extends StatelessWidget {
  const PlaylistsList({
    Key key,
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        ListView(
            primary: false,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: List.generate(albums.length, (ind) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: 80,
                      height: 80,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(0.0),
                        child: Image.network(
                          albumsLinks[ind],
                          height: 140.0,
                          width: 140.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            albums[ind],
                            style: TextStyle(
                              fontSize: 10.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.clip,
                            textAlign: TextAlign.left,
                          ),
                        ),
                        (albumsDesc[ind] != "")
                            ? Padding(
                                padding:
                                    const EdgeInsets.only(left: 8.0, top: 4.0),
                                child: Text(
                                  albumsDesc[ind],
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white54,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.clip,
                                  textAlign: TextAlign.left,
                                ),
                              )
                            : SizedBox(
                                height: 0,
                              ),
                      ],
                    )
                  ],
                ),
              );
            }).toList()),
      ],
    );
  }
}
