import 'package:flutter/material.dart';

class ChatList {
  final String name, lastMessage, image, time, call;
  final bool isactive;
  final IconData iconData;

  ChatList(
      {this.name,
      this.image,
      this.isactive,
      this.lastMessage,
      this.time,
      this.call,
      this.iconData});
}

List chat = [
  ChatList(
    name: 'Abhiram',
    image: "images/abhiram.jpg",
    isactive: true,
    lastMessage: "Paisa Tez Cheyy",
    time: '12:53',
    call: "Yesterday,6:07 pm",
    iconData: Icons.call,
  ),
  ChatList(
    name: 'Vyshak',
    image: "images/colony.jpg",
    isactive: true,
    lastMessage: "vallom padicho",
    time: '11:20',
    call: "Yesterday,6:07 pm",
    iconData: Icons.call,
  ),
  ChatList(
    name: 'Hegzy',
    image: "images/hegzy.jpg",
    isactive: true,
    lastMessage: "Da Purple Love inu sambhavana tharane",
    time: '11:06',
    call: "Yesterday,10:45 am",
    iconData: Icons.call,
  ),
  ChatList(
    name: 'Kiran',
    image: "images/kiran.jpg",
    isactive: true,
    lastMessage: "Ninne kond pattum",
    time: '10:30',
    call: "26 March,8:29 pm",
    iconData: Icons.call,
  ),
  ChatList(
    name: 'Arjun',
    image: "images/arjun.jpg",
    isactive: true,
    lastMessage: "Da nerthe eraggane",
    time: '9:41',
    call: "25 March, 3:31 pm",
    iconData: Icons.call,
  ),
  ChatList(
    name: 'Remya',
    image: "images/remya.jpg",
    isactive: true,
    lastMessage: "Da supply register cheyytho",
    time: '8:36',
    call: "25 March,11:02 am",
    iconData: Icons.call,
  ),
  ChatList(
    name: 'Vidhya',
    image: "images/vidya.jpg",
    isactive: true,
    lastMessage: "Da enthe 38 dance vedio kku like cheyyane",
    time: '6:00',
    call: " 24 March,4:29pm",
    iconData: Icons.call,
  ),
];
