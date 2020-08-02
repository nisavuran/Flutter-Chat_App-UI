import 'package:flutter/material.dart';
import 'package:test_project/models/message_model.dart';
import 'package:test_project/widgets/chat_screen.dart';

class OnlineUsers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Online Users',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 7,
            child: ListView.builder(
                padding: EdgeInsets.only(left: 10.0),
                scrollDirection: Axis.horizontal,
                itemCount: onlines.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => ChatScreen(
                                user: onlines[index],
                              )),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              CircleAvatar(
                            radius: 25,
                            backgroundImage:
                                NetworkImage(onlines[index].avatar),
                          ),
                          Positioned(
                            right:0,
                            bottom:0,
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:Colors.green,
                              ),
                            height:10,
                            width:10,
                            ))
                          
                            ],
                          ),
                          SizedBox(height: 6.0),
                          Text(
                            onlines[index].name,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              //fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
