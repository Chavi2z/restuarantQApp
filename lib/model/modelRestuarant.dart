import 'package:flutter/material.dart';

class ModelShop {
  final String name;
  final String address;
  final String time;
  final String phone;
  final String images;

  ModelShop({
    this.name,
    this.address,
    this.time,
    this.phone,
    this.images,
  });

  // factory ModelShop.fromJson(Map<String, dynamic> json) {
  //   ModelShop c = ModelShop();
  //   c.id = json['id'];
  //   c.name = json['name'];
  //   c.time = json['address'];
  //   c.name = json['time'];
  //   c.time = json['phone'];
  //   c.images = json['image'];
  //   return c;
  // }
}

// Our demo Shop

final demoShop = [
  ModelShop(
    name: "McDonalds",
    address: "McDonalds123456789",
    time: "ทุกวัน: 10:00 - 20:30",
    phone: "0990986655",
    images: ("assets/images/burger.png"),
  ),
  ModelShop(
    name: "McDonalds2",
    address: "McDonalds123456789",
    time: "ทุกวัน: 10:00 - 20:30",
    phone: "0990986655",
    images: ("assets/images/burger.png"),
  ),
  ModelShop(
    name: "McDonalds3",
    address: "McDonalds123456789",
    time: "ทุกวัน: 10:00 - 20:30",
    phone: "0990986655",
    images: ("assets/images/burger.png"),
  ),
  ModelShop(
    name: "McDonalds4",
    address: "McDonalds123456789",
    time: "ทุกวัน: 10:00 - 20:30",
    phone: "0990986655",
    images: ("assets/images/burger.png"),
  ),
];
