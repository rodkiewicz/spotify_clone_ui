import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/wigdets/playlists_list.dart';

class Playlists extends StatelessWidget {
  const Playlists({
    Key key,
  }) : super(key: key);

  static ScrollController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: SingleChildScrollView(
        controller: controller,
        primary: true,
        child: Column(
          children: <Widget>[
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 4.0),
                      child: TextField(
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 12.0, color: Colors.white70),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 12.0),
                          filled: true,
                          border: new OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(10.0),
                            ),
                          ),
                          fillColor: Colors.grey[900],
                          hintText: '🔍 Find in playlists',
                          hintStyle:
                              TextStyle(fontSize: 12.0, color: Colors.white70),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0, left: 4.0),
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      onPressed: () => {},
                      child: Text(
                        "Filters",
                        style: TextStyle(color: Colors.white60, fontSize: 12.0),
                      ),
                      color: Colors.grey[900],
                    ),
                  ),
                ],
              ),
            ),
            PlaylistsList()
          ],
        ),
      ),
    );
  }
}
