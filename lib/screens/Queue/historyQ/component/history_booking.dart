import 'package:flutter/material.dart';
import 'package:restaurant_app2/screens/Queue/bookingQ/booking.dart';
import 'package:restaurant_app2/screens/detailFood/detailFood.dart';

class HistoryBooking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, id) {
          return HistoryContainer();
        },
      ),
    );
  }
}

class HistoryContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Booking()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 1.5,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              blurRadius: 5.0,
              offset: Offset(0, 3),
              color: Colors.grey[300],
            ),
          ],
        ),
        padding: EdgeInsets.all(15.0),
        margin: EdgeInsets.symmetric(horizontal: 9.0, vertical: 7.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              //child: Image.asset("assets/images/lobster.png"),
              borderRadius: BorderRadius.circular(15.0),
            ),
            SizedBox(
              height: 9.0,
            ),
            Text(
              "Australian Lobster stewed rice",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 19.0,
              ),
            ),
            SizedBox(
              height: 9.0,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.pin_drop,
                  color: Colors.grey[400],
                ),
                Text(
                  "3KM Until Arrival",
                  style: TextStyle(
                    color: Colors.grey[400],
                  ),
                ),
                Spacer(),
                // Flexible(
                //   flex: 3,
                //   child: FittedBox(
                //     child: StarDisplay(
                //       value: 4,
                //     ),
                //   ),
                // )
              ],
            )
          ],
        ),
      ),
    );
  }
}
