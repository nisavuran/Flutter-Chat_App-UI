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


class InitialPage extends StatefulWidget {

  @override
  _InitialPageState createState() => _InitialPageState();
}


class _InitialPageState extends State<InitialPage> {
  int pageCounter=0;
  String text="Meesages";

void changePage(int val){ //sayfalar arası kaydırarak geçiş
  setState(() {
     changeText(val);
    pageCounter=val;

  });
}
 void changeText(int index){
 if(index==0){
   text="Home";
 }
 else if(index==1){
    text="Streams";
 }
 else if(index==2){
    text="Messages";
 }
 else if(index==3){
    text="Notifications";
 }
 else if(index==4){
    text="Profile";
 }

 }
  void bottomTapped(int index) {  //bottomnavbardan tıklayarak geçiş
    setState(() {
      changeText(index);
      pageCounter = index;
      pageController.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  PageController pageController = PageController(
    initialPage: 2,
    keepPage: true,
  );

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
              color:pageCounter==0 ? Colors.pink : Colors.blueGrey,
              onPressed: () {
                  bottomTapped(0);  
              },
            ),
            IconButton(
              icon: Icon(Icons.live_tv),
              tooltip: 'Streams',
              iconSize: 25,
              color:pageCounter==1 ? Colors.pink : Colors.blueGrey,
              onPressed: () {
                  bottomTapped(1);

              },
            ),
            IconButton(
              icon: Icon(Icons.message),
              tooltip: 'Meesages',
              iconSize: 25,
               color:pageCounter==2 ? Colors.pink : Colors.blueGrey,
              onPressed: () {
                 bottomTapped(2); 
              },
            ),
            IconButton(
              icon: Icon(Icons.notifications),
              tooltip: 'Notifications',
              iconSize: 25,
               color:pageCounter==3 ? Colors.pink : Colors.blueGrey,
              onPressed: () {
                   bottomTapped(3);  
              },
            ),
            IconButton(
              icon: Icon(Icons.supervised_user_circle),
              tooltip: 'Profile',
              iconSize: 25,
               color:pageCounter==4 ? Colors.pink : Colors.blueGrey,
              onPressed: () {
                 bottomTapped(4);   
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
          text,
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
      body: PageView(
        controller: pageController,
         onPageChanged: (index) {
        changePage(index);
      },
        children: <Widget>[
        HomeScreen(),
        StreamsPage(),
        FirstPage(),
        NotificationsPage(),
        ProfilePage(),

      ],),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}