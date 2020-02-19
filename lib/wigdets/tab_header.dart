import 'package:flutter/material.dart';

class TabHeader extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return LayoutBuilder(builder: (context, constraints) {
      double percentage =
          (minExtent - shrinkOffset)/10;
      print(percentage);
      if(percentage > 1){
        percentage = 1;
      }
      if(percentage < 0.10){
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
                  left: 16.0,
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
  double get maxExtent => 90.0;

  @override
  double get minExtent => 10.0;
}
