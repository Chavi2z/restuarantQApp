import 'package:flutter/material.dart';

class Booking {
  int id;
  String name;
  String address;
  String queue;
  String person;
  String date;
  String time;

  Booking(
      {@required this.id,
      @required this.name,
      @required this.address,
      @required this.queue,
      @required this.person,
      @required this.date,
      @required this.time});

  List<Booking> demoBook = [
    Booking(
      id: 1,
      name: 'McDonalds',
      address: 'McDonalds123456789',
      queue: 'A001',
      person: '1 ท่าน',
      date: '24-12-2018',
      time: '18.16',
    ),
    Booking(
      id: 2,
      name: 'McDonalds',
      address: 'McDonalds123456789',
      queue: 'A001',
      person: '1 ท่าน',
      date: '24-12-2018',
      time: '18.16',
    ),
  ];
}
