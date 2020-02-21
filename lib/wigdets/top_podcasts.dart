import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/data/podcasts.dart';



class TopPodacasts extends StatelessWidget {
  const TopPodacasts({
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
            "Your top podcasts",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18),
            textAlign: TextAlign.left,
          ),
        ),
        SizedBox(
          height: 230,
          width: 100,
          child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(podcasts.length, (ind) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          podcastsLinks[ind],
                          height: 160.0,
                          width: 160.0,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Container(
                          constraints: BoxConstraints(maxWidth: 200.0),
                          child: Text(
                            podcasts[ind],
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
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: Container(
                          constraints: BoxConstraints(maxWidth: 200.0),
                          child: Text(
                            podcastsAuthors[ind],
                            style: TextStyle(
                              fontSize: 10.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.white54,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.clip,
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }).toList()),
        ),
      ],
    );
  }
}
