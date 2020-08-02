import 'package:flutter/material.dart';
//import 'package:test_project/models/message_model.dart';
import 'package:test_project/widgets/online_users.dart';
import 'package:test_project/widgets/recent_chats.dart';

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
              iconSize: 25,
              color: Colors.blueGrey,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.view_stream),
              iconSize: 25,
              color: Colors.blueGrey,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.message),
              iconSize: 25,
              color: Colors.pink,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.notifications),
              iconSize: 25,
              color: Colors.blueGrey,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.supervised_user_circle),
              iconSize: 25,
              color: Colors.blueGrey,
              onPressed: () {},
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
