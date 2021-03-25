import 'package:flutter/material.dart';
import 'package:chat_app/status.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: choices.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
            TabBar(
              automaticIndicatorColorAdjustment: true,
              tabs: [
                Text('ALL'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
