import 'package:flutter/material.dart';
import 'package:restaurant_app2/screens/Queue/arriveQ/ArriveQueue.dart';
import 'package:restaurant_app2/screens/Queue/arriveQ/component/arrive_booking.dart';
import 'package:restaurant_app2/screens/Queue/arriveQ/component/button_arrive.dart';
import 'package:restaurant_app2/screens/Queue/arriveQ/component/button_history.dart';
import 'package:restaurant_app2/screens/Queue/historyQ/HistoryQueue.dart';

class BodyArrive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ArriveButton(
                size: size,
                press: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ArriveQ()));
                },
              ),
              SizedBox(
                width: 15.0,
              ),
              HitoryButton(
                size: size,
                press: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HistoryQ()));
                },
              ),
            ],
          ),
        ),
        ArriveBooking(),
      ],
    );
  }
}
