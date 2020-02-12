import 'package:flutter/material.dart';

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
  "https://images.unsplash.com/photo-1581309553233-a6d8e331c921?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2251&q=80"
];

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
