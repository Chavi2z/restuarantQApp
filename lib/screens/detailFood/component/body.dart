import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:restaurant_app2/screens/Queue/bookingQ/booking.dart';
import 'package:restaurant_app2/screens/Queue/cancelQ/cencelQ.dart';
import 'package:restaurant_app2/screens/Queue/successQ/successQ.dart';
import 'package:restaurant_app2/screens/detailFood/component/booking_button.dart';
import 'package:restaurant_app2/screens/detailFood/component/button_wait.dart';
import 'package:restaurant_app2/screens/detailFood/component/counter.dart';
import 'package:restaurant_app2/screens/detailFood/component/item_image.dart';
import 'package:restaurant_app2/screens/detailFood/component/title.dart';
import 'package:restaurant_app2/widgets/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ItemImage(
          imgSrc: "assets/images/burger.png",
        ),
        Expanded(
          child: ItemInfo(),
        ),
      ],
    );
  }
}

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'McDonalds',
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: kDarkblueColor),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'กรุณากรอกจำนวนที่นั่ง',
              style: TextStyle(
                  fontSize: 15.0,
                  //fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(
              height: 20.0,
            ),

            Row(
              children: <Widget>[
                CounterDesign(),
                SizedBox(
                  width: 15.0,
                ),
                WaitButton(
                  size: size,
                  press: () {},
                ),
              ],
            ),

            // TitlePriceRating(
            //   name: "McDonalds",
            //   numOfReviews: 24,
            //   rating: 4,
            //   //price: 15,
            //  // onRatingChanged: (value) {},
            // ),

            SizedBox(
              height: 20.0,
            ),

            shopeName(name: "McDonalds123456789"),
            shopeTime(time: "ทุกวัน: 10:00 - 20:30 "),
            shopePhone(phone: "0990986655"),

            SizedBox(height: size.height * 0.01),

            Text(
              "Nowadays, making printed materials have become fast, easy and simple. If you want your promotional material to be an eye-catching object, you should make it colored. By way of using inkjet printer this is not hard to make. An inkjet printer is any printer that places extremely small droplets of ink onto paper to create an image.",
              style: TextStyle(
                height: 1.5,
              ),
            ),

            SizedBox(height: size.height * 0.02),

            Row(
              children: <Widget>[
                SizedBox(
                  width: 15.0,
                ),
                BookingButton(
                  size: size,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Booking()),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Row shopeName({String name}) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.location_on,
          color: ksecondaryColor,
        ),
        SizedBox(width: 10),
        Text(name),
      ],
    );
  }

  Row shopeTime({String time}) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.access_time,
          color: ksecondaryColor,
        ),
        SizedBox(width: 10),
        Text(time),
      ],
    );
  }

  Row shopePhone({String phone}) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.phone_enabled,
          color: ksecondaryColor,
        ),
        SizedBox(width: 10),
        Text(phone),
      ],
    );
  }
}
