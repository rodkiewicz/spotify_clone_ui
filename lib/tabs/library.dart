import 'package:flutter/material.dart';

import 'inside_tabs/music_tab.dart';
import 'inside_tabs/podcasts_tab.dart';

class Library extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var tabController;
    var scrollViewController;
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Scaffold(
          body: NestedScrollView(
            controller: scrollViewController,
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              var tabController;
              return <Widget>[
                SliverAppBar(
                  flexibleSpace: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 28.0,
                            ),
                            child: TabBar(
                              labelStyle: TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.w600),
                              indicatorColor: Colors.transparent,
                              isScrollable: true,
                              labelPadding:
                                  EdgeInsets.only(left: 0.0, right: 0.0),
                              indicator: null,
                              tabs: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Tab(
                                    text: "Music",
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Tab(text: "Podcasts"),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  pinned: true,
                  floating: true,
                  backgroundColor: Colors.black,
                  forceElevated: innerBoxIsScrolled,
                ),
              ];
            },
            body: TabBarView(
              children: [
                MusicTab(),
                PodcastsTab(),
              ],
              controller: tabController,
            ),
          ),
        ),
      ),
    );
  }
}

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
