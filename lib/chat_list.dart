import 'package:flutter/material.dart';

class ChatList {
  final String name, lastMessage, image, time;
  final bool isactive;

  ChatList({this.name, this.image, this.isactive, this.lastMessage, this.time});
}

List chat = [
  ChatList(
      name: 'Abhiram',
      image: "images/abhiram.jpg",
      isactive: true,
      lastMessage: "Paisa Tez Cheyy",
      time: '12:53'),
  ChatList(
      name: 'Vyshak',
      image: "images/colony.jpg",
      isactive: true,
      lastMessage: "vallom padicho",
      time: '11:20'),
  ChatList(
      name: 'Hegzy',
      image: "images/hegzy.jpg",
      isactive: true,
      lastMessage: "Da Purple Love inu sambhavana tharane",
      time: '11:06'),
  ChatList(
      name: 'Kiran',
      image: "images/kiran.jpg",
      isactive: true,
      lastMessage: "Ninne kond pattum",
      time: '10:30'),
  ChatList(
      name: 'Arjun',
      image: "images/arjun.jpg",
      isactive: true,
      lastMessage: "Da nerthe eraggane",
      time: '9:41'),
  ChatList(
      name: 'Remya',
      image: "images/remya.jpg",
      isactive: true,
      lastMessage: "Da supply register cheyytho",
      time: '8:36'),
  ChatList(
      name: 'Vidhya',
      image: "images/vidya.jpg",
      isactive: true,
      lastMessage: "Da enthe 38 dance vedio kku like cheyyane",
      time: '6:00'),
];
