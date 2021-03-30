import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  File imageFile;
  final picker = ImagePicker();

  _openGallery(BuildContext context) async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    this.setState(() {
      if (pickedFile != null) {
        imageFile = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
    Navigator.pop(context);
  }

  _openCamera(BuildContext context) async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);
    this.setState(() {
      if (pickedFile != null) {
        imageFile = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
    Navigator.pop(context);
  }

  Future<void> _showChoiceDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Profile Photo'),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Row(
                    children: [
                      Icon(Icons.image_outlined),
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        child: Text('Gallery'),
                        onTap: () {
                          _openGallery(context);
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(Icons.camera_alt_outlined),
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        child: Text('Camera'),
                        onTap: () {
                          _openCamera(context);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 80,
            ),
            Center(
              child: Stack(
                children: [
                  Container(
                    child: CircleAvatar(
                      backgroundImage: imageFile == null
                          ? AssetImage('images/akash.png')
                          : FileImage(File(imageFile.path)),
                      radius: 70,
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.green,
                        )),
                    margin: EdgeInsets.only(top: 90, left: 100),
                    child: IconButton(
                      onPressed: () {
                        _showChoiceDialog(context);
                      },
                      icon: Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Akash J Nair',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Opacity(
              opacity: 0.64,
              child: Text(
                'Software Engineer',
                style: TextStyle(),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.edit,
                  size: 30,
                  color: Colors.blue[700],
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.settings,
                  size: 30,
                  color: Colors.blue[700],
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.notifications_none_outlined,
                  size: 30,
                  color: Colors.blue[700],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            DefaultTabController(
              length: 4,
              child: TabBar(
                physics: ClampingScrollPhysics(),
                //indicatorSize: TabBarIndicatorSize.label,
                //indicatorWeight: 5,
                automaticIndicatorColorAdjustment: true,
                tabs: [
                  Text(
                    'Photos',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Videos',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Audios',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Docs',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              "images/akash.png",
                              scale: 5,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              "images/abhiram.jpg",
                              scale: 10,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              "images/colony.jpg",
                              scale: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              "images/hegzy.jpg",
                              scale: 10,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              "images/kiran.jpg",
                              scale: 10,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              "images/arjun.jpg",
                              scale: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              "images/remya.jpg",
                              scale: 10,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              "images/vidya.jpg",
                              scale: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
