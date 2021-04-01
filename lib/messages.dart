import 'package:flutter/material.dart';

class Messages extends StatefulWidget {
  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          title: Row(
            children: [
              Container(
                // padding: EdgeInsets.only(right: 30),
                child: Stack(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("images/abhiram.jpg"),
                      radius: 20,
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Container(
                        height: 13,
                        width: 13,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white60,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Abhiram',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Colors.black),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Opacity(
                        opacity: 0.64,
                        child: Text(
                          "Online",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          actions: [
            Container(child: Icon(Icons.phone)),
            Container(
              padding: EdgeInsets.only(right: 10),
              child: Icon(Icons.more_vert),
            ),
          ],
        ),
      ),
    );
  }
}
