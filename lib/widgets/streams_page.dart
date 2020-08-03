import 'package:flutter/material.dart';

class StreamsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          iconSize: 25,
          color: Colors.black,
          onPressed: () {
             Navigator.of(context).pop(); 
          },
        ),
        centerTitle: true,
        title: Text(
          "Streams",
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

      body: Text(
       "Streams Page",
      ),
    );
  }
}