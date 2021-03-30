import 'package:flutter/material.dart';
import '';

class Status extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          Column(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("images/akash.png"),
                radius: 40,
              ),
              Text('You'),
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("images/abhiram.jpg"),
                radius: 40,
              ),
              Text('Abhiram'),
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("images/arjun.jpg"),
                radius: 40,
              ),
              Text('Arjun'),
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("images/colony.jpg"),
                radius: 40,
              ),
              Text('Vyshak'),
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("images/hegzy.jpg"),
                radius: 40,
              ),
              Text('Hegzy'),
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("images/kiran.jpg"),
                radius: 40,
              ),
              Text('Kiran'),
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("images/remya.jpg"),
                radius: 40,
              ),
              Text('Remya'),
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("images/vidya.jpg"),
                radius: 40,
              ),
              Text('Vidya'),
            ],
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
