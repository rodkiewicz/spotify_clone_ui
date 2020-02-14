import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/wigdets/playlists.dart';

class MusicTab extends StatelessWidget {
  const MusicTab({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: AppBar(
            backgroundColor: Colors.black,
            flexibleSpace: new Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 18.0,
                      ),
                      child: TabBar(
                        labelStyle: TextStyle(
                            fontSize: 13.0,
                            fontWeight: FontWeight.w500),
                        isScrollable: true,
                        labelPadding:
                            EdgeInsets.only(left: 0.0, right: 0.0),
                        indicator: UnderlineTabIndicator(
                            borderSide: BorderSide(
                              width: 2,
                              color: Colors.greenAccent[400],
                            ),
                            insets: EdgeInsets.only(
                                left: 15, right: 15, bottom: 18)),
                        tabs: [
                          Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Tab(text: "Playlists"),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Tab(text: "Artists"),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Tab(text: "Albums"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Playlists(),
            Playlists(),
            Playlists(),
          ],
        ),
      ),
    );
  }
}
