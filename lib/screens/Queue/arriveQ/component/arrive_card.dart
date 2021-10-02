import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:restaurant_app2/model/Restuarant.dart';
import 'package:restaurant_app2/model/booking_model.dart';
import 'package:restaurant_app2/screens/detailFood/detailFood.dart';
import 'package:restaurant_app2/widgets/constants.dart';
import 'package:restaurant_app2/widgets/size_config.dart';

class ArriveCard extends StatelessWidget {
  const ArriveCard({
    Key key,
    this.width = 200,
    this.aspectRetio = 1.02,
    @required this.booking,
  }) : super(key: key);

  final double width, aspectRetio;
  final Booking booking;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(width),
        child: GestureDetector(
          onTap: () {
            // Navigator.push(
            //     context, MaterialPageRoute(builder: (context) => DetailFood()));
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1.02,
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                  decoration: BoxDecoration(
                    color: kblueColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Hero(
                    tag: booking.id.toString(),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                booking.name,
                style: TextStyle(color: Colors.black),
                maxLines: 2,
              ),
              Text(
                booking.address,
                style: TextStyle(color: Colors.black),
                maxLines: 2,
              ),
              Text(
                booking.queue,
                style: TextStyle(color: Colors.black),
                maxLines: 2,
              ),
              Text(
                booking.person,
                style: TextStyle(color: Colors.black),
                maxLines: 2,
              ),
              Text(
                booking.date,
                style: TextStyle(color: Colors.black),
                maxLines: 2,
              ),
              Text(
                booking.time,
                style: TextStyle(color: Colors.black),
                maxLines: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
