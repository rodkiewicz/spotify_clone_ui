import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/tabs/inside_tabs/music_tab.dart';
import 'package:spotify_ui_clone/tabs/inside_tabs/podcasts_tab.dart';
import 'package:spotify_ui_clone/wigdets/tab_header.dart';

class Library extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var tabController;
    var scrollViewController;
    return Scaffold(
        backgroundColor: Colors.black,
        body: CustomScrollView(
          slivers: <Widget>[
            SliverPersistentHeader(
              pinned: true,
              delegate: TabHeader(),
            ),
            SliverFillRemaining(
              child: PageView(
                children: <Widget>[MusicTab(), PodcastsTab()],
              ),
            ),
          ],
        ));
  }
}

//SafeArea(
//child: Column(
//children: <Widget>[
//AppBar(
//flexibleSpace: Row(
//mainAxisAlignment: MainAxisAlignment.start,
//crossAxisAlignment: CrossAxisAlignment.center,
//children: <Widget>[
//FlatButton(
//child: Text("Music"),
//onPressed: () => {},
//),
//FlatButton(
//child: Text("Podcasts"),
//onPressed: () => {},
//
//),
//],
//),
//),
//Expanded(
//child: PageView(
//children: <Widget>[MusicTab(), PodcastsTab()],
//),
//),
//],
//),
//)
//===============
//DefaultTabController(
//        length: 2,
//        child: Scaffold(
//          body: CustomScrollView(
//              controller: scrollViewController,
//              slivers: <Widget>[
//                SliverAppBar(
//                  flexibleSpace: Column(
//                    mainAxisAlignment: MainAxisAlignment.end,
//                    children: <Widget>[
//                      Align(
//                        alignment: Alignment.centerLeft,
//                        child: Container(
//                          child: Padding(
//                            padding: const EdgeInsets.only(
//                              left: 28.0,
//                            ),
//                            child: TabBar(
//                              labelStyle: TextStyle(
//                                  fontSize: 25.0, fontWeight: FontWeight.w600),
//                              indicatorColor: Colors.transparent,
//                              isScrollable: true,
//                              labelPadding:
//                                  EdgeInsets.only(left: 0.0, right: 0.0),
//                              indicator: null,
//                              tabs: [
//                                Padding(
//                                  padding: const EdgeInsets.only(right: 8.0),
//                                  child: Tab(
//                                    text: "Music",
//                                  ),
//                                ),
//                                Padding(
//                                  padding: const EdgeInsets.all(8.0),
//                                  child: Tab(text: "Podcasts"),
//                                ),
//                              ],
//                            ),
//                          ),
//                        ),
//                      ),
//                    ],
//                  ),
//                  pinned: false,
//                  floating: true,
//                  snap: false,
//                  backgroundColor: Colors.black,
//                ),
//                SliverFixedExtentList(
//
//                  itemExtent: 1000,
//                  delegate: SliverChildListDelegate(
//                    [
//                      TabBarView(
//                        children: [
//                          MusicTab(),
//                          PodcastsTab(),
//                        ],
//                        controller: tabController,
//                      ),
//                    ],
//                  ),
//                ),
//              ]),
//        ),
//      ),
//===============
//  appBar: AppBar(
//           backgroundColor: Colors.black,
//           flexibleSpace: new Column(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: <Widget>[
//               Align(
//                 alignment: Alignment.centerLeft,
//                 child: Container(
//                   child: Padding(
//                     padding: const EdgeInsets.only(
//                       left: 28.0,
//                     ),
//                     child: TabBar(
//                       labelStyle: TextStyle(
//                           fontSize: 25.0, fontWeight: FontWeight.w600),
//                       indicatorColor: Colors.transparent,
//                       isScrollable: true,
//                       labelPadding: EdgeInsets.only(left: 0.0, right: 0.0),
//                       indicator: null,
//                       tabs: [
//                         Padding(
//                           padding: const EdgeInsets.only(right: 8.0),
//                           child: Tab(
//                             text: "Music",
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Tab(text: "Podcasts"),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
