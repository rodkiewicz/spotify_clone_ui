
import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/data/albums.dart';

List<String> tabs = ["Playlists","Artists","Albums"];
class Library extends StatefulWidget {
  @override
  LibraryState createState() => new LibraryState();
}

class LibraryState extends State<Library>
    with TickerProviderStateMixin {
  ScrollController _scrollController = new ScrollController();

  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: new NestedScrollView(
          controller: _scrollController,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              new SliverPersistentHeader(
                pinned: false,
                delegate: new TabHeader(controller: _tabController),
              ),
              SliverAppBar(
                pinned: true,
                backgroundColor: Colors.black,
                flexibleSpace: new Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 18.0,
                          ),
                          child: TabBar(
                            controller: _tabController,
                            labelStyle: TextStyle(
                                fontSize: 13.0, fontWeight: FontWeight.w500),
                            isScrollable: true,
                            labelColor: Colors.white,
                            labelPadding:
                                EdgeInsets.only(left: 0.0, right: 0.0),
                            indicator: UnderlineTabIndicator(
                                borderSide: BorderSide(
                                  width: 2,
                                  color: Colors.greenAccent[400],
                                ),
                                insets: EdgeInsets.only(
                                    left: 8, right: 8, bottom: 14)),
                            tabs: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 8.0, right: 8.0),
                                child: Tab(text: tabs[0]),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 8.0, right: 8.0),
                                child: Tab(text: tabs[1]),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 8.0, right: 8.0),
                                child: Tab(text: tabs[2]),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 10.0, right: 4.0),
                          child: TextField(
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 12.0, color: Colors.white70),
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
                              hintStyle: TextStyle(
                                  fontSize: 12.0, color: Colors.white70),
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
                            style: TextStyle(
                                color: Colors.white60, fontSize: 12.0),
                          ),
                          color: Colors.grey[900],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: PlaylistsPageBody(
            tabController: _tabController,
            scrollController: _scrollController,
          ),
        ),
      ),
    );
  }
}

class PlaylistsPageBody extends StatefulWidget {
  PlaylistsPageBody({this.scrollController, this.tabController});

  final ScrollController scrollController;
  final TabController tabController;

  PlaylistsPageBodyState createState() =>  PlaylistsPageBodyState();
}

class PlaylistsPageBodyState extends State<PlaylistsPageBody> {
  Key _key = new PageStorageKey({});
  bool _innerListIsScrolled = false;

  void _updateScrollPosition() {
    if (!_innerListIsScrolled &&
        widget.scrollController.position.extentAfter == 0.0) {
      setState(() {
        _innerListIsScrolled = true;
      });
    } else if (_innerListIsScrolled &&
        widget.scrollController.position.extentAfter > 0.0) {
      setState(() {
        _innerListIsScrolled = false;
        // Reset scroll positions of the TabBarView pages
        _key = new PageStorageKey({});
      });
    }
  }

  @override
  void initState() {
    widget.scrollController.addListener(_updateScrollPosition);
    super.initState();
  }

  @override
  void dispose() {
    widget.scrollController.removeListener(_updateScrollPosition);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new TabBarView(
      controller: widget.tabController,
      key: _key,
      children: List<Widget>.generate(tabs.length, (int index) {
        return ListView.builder(
          key: PageStorageKey<int>(index),
          itemBuilder: _buildTile,
        );
      }),
    );
  }
}


class TabHeader extends SliverPersistentHeaderDelegate {
  TabHeader({this.controller});

  final TabController controller;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return LayoutBuilder(builder: (context, constraints) {
      double percentage = (minExtent - shrinkOffset) / 10;
      if (percentage > 1) {
        percentage = 1;
      }
      if (percentage < 0.10) {
        percentage = 0;
      }
      return SafeArea(
        child: Container(
          alignment: Alignment.topLeft,
          height: constraints.maxHeight,
          color: Colors.black,
          child: Opacity(
              opacity: percentage,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 8.0,
                ),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: minExtent - shrinkOffset,
                      left: 0,
                      child: Row(
                        children: <Widget>[
                          MaterialButton(
                            child: Text(
                              "Music",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          MaterialButton(
                            child: Text(
                              "Podcasts",
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w600),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ),
      );
    });
  }

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate _) => true;

  @override
  double get maxExtent => 60.0;

  @override
  double get minExtent => 10.0;
}

Widget _buildTile(BuildContext context, int ind) {
  if (ind >= albums.length) return null;
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
              padding: const EdgeInsets.only(left: 8.0, top: 4.0),
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
}
