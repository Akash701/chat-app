import 'package:flutter/material.dart';
import 'package:chat_app/status.dart';
import 'package:chat_app/chat_list.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // TabController _tabController;
  //
  // @override
  // void initState() {
  //   super.initState();
  //   _tabController = new TabController(vsync:, length: 3);
  // }
  //
  // @override
  // void dispose() {
  //   _tabController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
          child: Text(
            "Let's Talk",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: TextButton(
          onPressed: () {},
          child: Icon(
            Icons.add_circle_outline_outlined,
            size: 30,
            color: Colors.black,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Icon(
              Icons.search,
              size: 30,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Status(),
            SizedBox(
              height: 25,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                'Messages',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            DefaultTabController(
              length: 3,
              child: TabBar(
                physics: ClampingScrollPhysics(),
                //indicatorSize: TabBarIndicatorSize.label,
                //indicatorWeight: 5,
                automaticIndicatorColorAdjustment: true,
                tabs: [
                  Text(
                    'All',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Family',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Friends',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: chat.length,
                  itemBuilder: (context, int index) => Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                        child: Row(
                          children: [
                            Stack(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage(chat[index].image),
                                  radius: 30,
                                ),
                                Container(
                                  height: 16,
                                  width: 16,
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Colors.white60,
                                      )),
                                ),
                              ],
                            ),
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text(
                                    chat[index].name,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Opacity(
                                    opacity: 0.64,
                                    child: Text(
                                      chat[index].lastMessage,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerRight,
                                  margin: EdgeInsets.only(right: 10),
                                  child: Text(chat[index].time),
                                ),
                              ],
                            ))
                          ],
                        ),
                      )),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white54,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25),
                  topLeft: Radius.circular(25),
                ),
              ),
              padding: EdgeInsets.only(left: 40, right: 40),
              height: 70,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.message_outlined,
                          size: 27,
                        ),
                        focusColor: Colors.green,
                        onPressed: () {},
                      ),
                      Container(
                        height: 13,
                        width: 13,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white60,
                            )),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.phone_outlined,
                      size: 27,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.camera_alt_outlined,
                      size: 27,
                    ),
                    onPressed: () {},
                  ),
                  TextButton(
                    onPressed: () {},
                    child: CircleAvatar(
                      backgroundImage: AssetImage("images/akash.png"),
                      radius: 17,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
