import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spotify_ui_clone/tabs/home.dart';
import 'package:spotify_ui_clone/tabs/library.dart';
import 'package:spotify_ui_clone/tabs/search.dart';
import 'package:spotify_ui_clone/wigdets/player.dart';

void main() {
  runApp(MaterialApp(
      // Title
      title: "Spotify UI Clone",
      // Home
      home: MyHome()));
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
          statusBarBrightness: Brightness.dark, //ios
        ));
}

class MyHome extends StatefulWidget {
  @override
  MyHomeState createState() => MyHomeState();
}

// SingleTickerProviderStateMixin is used for animation
class MyHomeState extends State<MyHome> with SingleTickerProviderStateMixin {
  // Create a tab controller
  TabController controller;

  @override
  void initState() {
    super.initState();

    // Initialize the Tab Controller
    controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // Dispose of the Tab Controller
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
        // Set the TabBar view as the body of the Scaffold
        body: Stack(
          children: <Widget>[
            TabBarView(
              // Add tabs as widgets
              children: <Widget>[Home(), Search(), Library()],
              // set the controller
              controller: controller,
            ),
            Align(child: Player(),alignment: Alignment.bottomCenter,)
          ],
        ),
        // Set the bottom navigation bar
        bottomNavigationBar: Material(
          // set the color of the bottom navigation bar
          color: Colors.black,
          // set the tab bar as the child of bottom navigation bar
          child: TabBar(

            tabs: <Tab>[
              Tab(
                // set icon to the tab
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.search),
                text: 'Search',
              ),
              Tab(
                icon: Icon(Icons.format_list_bulleted),
                text: 'Your Library',
              ),
            ],
            // setup the controller
            controller: controller,
          ),
        ));
  }
}



