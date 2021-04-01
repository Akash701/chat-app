import 'package:flutter/material.dart';
import 'package:chat_app/status.dart';
import 'package:chat_app/chat_list.dart';
import 'package:flutter/widgets.dart';
import 'package:chat_app/profile.dart';
import 'package:chat_app/phone.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:chat_app/Camera.dart';
import 'package:chat_app/messages.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future _openCamera(BuildContext context) async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);
    this.setState(() {
      if (pickedFile != null) {
        imageFile = File(pickedFile.path);
      } else {
        Navigator.pop(context);
      }
    });
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return Home();
    }));
  }

  Camera camera = Camera();
  int _selectedicon = 1;
  File imageFile;
  final picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    final tabs = [
      SafeArea(
          // child: Camera(),
          ),
      /////////
      // Camera - Home////
      ////////
      SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.add_circle_outline_outlined,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
                Center(
                  child: Text(
                    "Let's Talk",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.black,
                    // color: Colors.black,
                  ),
                ),
              ],
            ),
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
                itemBuilder: (context, int index) => InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Messages();
                    }));
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(chat[index].image),
                              radius: 30,
                            ),
                            Positioned(
                              right: 0,
                              bottom: 0,
                              child: Container(
                                height: 16,
                                width: 16,
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
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          margin: EdgeInsets.only(right: 10),
                          child: Text(chat[index].time),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      /////////
      //Home - Phone
      Phone(),
      ///////
      //phone - Photo
      ///////
      Profile(),
    ];
    return Scaffold(
      body: tabs[_selectedicon],
      bottomNavigationBar: BottomNavigationBar(
        // type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedIconTheme: IconThemeData(size: 30),
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black54,
        // unselectedItemColor: Colors.white,
        currentIndex: _selectedicon,
        onTap: (index) {
          setState(() {
            _selectedicon = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  _openCamera(context);
                },
                icon: Icon(
                  Icons.camera_alt_outlined,
                ),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: ""),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.phone_outlined,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
              icon: Hero(
                tag: 'akash',
                child: CircleAvatar(
                  backgroundImage: imageFile == null
                      ? AssetImage('images/akash.png')
                      : FileImage(File(imageFile.path)),
                  radius: 14,
                ),
              ),
              label: ""),
        ],
      ),
    );
  }
}
