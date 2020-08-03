import 'package:flutter/material.dart';
import 'package:test_project/widgets/home_screen.dart';
import 'package:test_project/widgets/notifications_page.dart';
//import 'package:test_project/models/message_model.dart';
import 'package:test_project/widgets/online_users.dart';
import 'package:test_project/widgets/profile.dart';
import 'package:test_project/widgets/recent_chats.dart';
import 'package:test_project/widgets/streams_page.dart';

//Home Screen
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {
      "/": (context) => InitialPage(),
      "/streams": (context) => StreamsPage(),
      "/home": (context) => HomeScreen(),
      "/notifications": (context) => NotificationsPage(),
      "/profile": (context) => ProfilePage(),
    });
  }
}

class InitialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              tooltip: 'Home',
              iconSize: 25,
              color: Colors.blueGrey,
              onPressed: () {
                  Navigator.pushNamed(context, '/home');  
              },
            ),
            IconButton(
              icon: Icon(Icons.live_tv),
              tooltip: 'Streams',
              iconSize: 25,
              color: Colors.blueGrey,
              onPressed: () {
                   Navigator.pushNamed(context, '/streams');

              },
            ),
            IconButton(
              icon: Icon(Icons.message),
              tooltip: 'Meesages',
              iconSize: 25,
              color: Colors.pink,
              onPressed: () {
                  Navigator.pushNamed(context, '/');
              },
            ),
            IconButton(
              icon: Icon(Icons.notifications),
              tooltip: 'Notifications',
              iconSize: 25,
              color: Colors.blueGrey,
              onPressed: () {
                   Navigator.pushNamed(context, '/notifications'); 
              },
            ),
            IconButton(
              icon: Icon(Icons.supervised_user_circle),
              tooltip: 'Profile',
              iconSize: 25,
              color: Colors.blueGrey,
              onPressed: () {
                 Navigator.pushNamed(context, '/profile');  
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          iconSize: 25,
          color: Colors.black,
          onPressed: () {},
        ),
        centerTitle: true,
        title: Text(
          "Messages",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.person_add),
              iconSize: 30.0,
              color: Colors.black,
              onPressed: () {}
              ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                  ),
              child: Column(
                children: <Widget>[
                  OnlineUsers(),
                  RecentChats(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
