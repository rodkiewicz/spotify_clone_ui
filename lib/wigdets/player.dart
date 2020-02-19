import 'package:flutter/material.dart';


class Player extends StatelessWidget {
  const Player({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.09,
      color: Color.fromARGB(255, 26, 26, 26),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.network(
            "https://images.unsplash.com/photo-1581446825137-f07a81380ead?ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80",
            width: MediaQuery.of(context).size.height * 0.09,
            fit: BoxFit.fitWidth,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 10.0,left: 10.0),
                  child: Container(
                    constraints: BoxConstraints(maxWidth: 200.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Podcast 1 - Title · Author ",
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.visible,
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Row(children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Icon(Icons.devices, color: Colors.white,size: 16.0,),
                      ),
                      Text(
                        "Devices Available",
                        style: TextStyle(
                          fontSize: 8.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.visible,
                        textAlign: TextAlign.left,
                      )
                    ]),
                  ),
                ),
              ],
            ),
          ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
                icon: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                ),
                iconSize: 40.0,
              ),
        ),
          
        ],
      ),
    );
  }
}
