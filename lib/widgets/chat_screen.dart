import 'package:flutter/material.dart';
import 'package:test_project/main.dart';
import 'package:test_project/models/message_model.dart';
import 'package:test_project/models/user_model.dart';
import 'package:test_project/widgets/recent_chats.dart';

class ChatScreen extends StatefulWidget {
  final User user;
  final Message message;
  ChatScreen({this.user, this.message});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  _buildMessage(Message message, bool isMe) {
    return Row(
      children: <Widget>[
        Container(
          margin: isMe
              ? EdgeInsets.only(top: 8, bottom: 8, left: 100)
              : EdgeInsets.only(top: 8, bottom: 8),
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          width: MediaQuery.of(context).size.width * 0.75,
          decoration: BoxDecoration(
            color: isMe ? Colors.pink : Colors.grey[200],
            borderRadius: isMe
                ? BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  )
                : BorderRadius.only(
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
          ),
          child: Text(
            message.message,
            style: TextStyle(
              color: isMe ? Colors.white : Colors.black,
            ),
          ),
        ),
        !isMe
            ? IconButton(
                icon: message.isLiked
                    ? Icon(Icons.favorite)
                    : Icon(Icons.favorite_border),
                iconSize: 20.0,
                color: message.isLiked ? Colors.pink : Colors.blueGrey,
                onPressed: () {})
            : SizedBox.shrink(),
      ],
    );
  }

  _buildMessageComposer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      height: 70,
      color: Colors.white,
      child: Row(
        children: <Widget>[
          IconButton(
              icon: Icon(Icons.attach_file),
              iconSize: 25.0,
              color: Colors.blueGrey,
              onPressed: () {}),
          IconButton(
              icon: Icon(Icons.insert_emoticon),
              iconSize: 25.0,
              color: Colors.blueGrey,
              onPressed: () {}),
          Expanded(
            child: TextField(
              decoration: InputDecoration(hintText: "Write a comment..."),
            ),
          ),
          IconButton(
              icon: Icon(Icons.send),
              iconSize: 25.0,
              color: Colors.pink,
              onPressed: () {}),
        ],
      ),
    );
  }

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
            widget.user.name,
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
                icon: Icon(Icons.more_vert),
                iconSize: 30.0,
                color: Colors.black,
                onPressed: () {}),
          ],
        ),
        body: GestureDetector(
          onTap: () =>FocusScope.of(context).unfocus(), // klavyeyi boş alana tıklayarak indirme
                  child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: ListView.builder(
                      padding: EdgeInsets.only(top: 15),
                      itemCount: messages.length,
                      itemBuilder: (BuildContext context, int index) {
                        final Message message = messages[index];
                        final bool isMe = message.sender.id == currentUser.id;
                        return _buildMessage(message, isMe);
                      }),
                ),
              ),
              _buildMessageComposer(),
            ],
          ),
        ));
  }
}
