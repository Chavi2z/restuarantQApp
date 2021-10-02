import 'package:flutter/material.dart';
import 'package:restaurant_app2/components/coustom_bottom_nav_bar.dart';
import 'package:restaurant_app2/screens/Queue/bookingQ/components/body.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../enums.dart';

class Booking extends StatefulWidget {
  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  // @override
  // void initState() {
  //   super.initState();
  //   readInfo();
  // }

  // Future<Null> readInfo() async {
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  //   String idShop = preferences.getString('id');
  //   print('idShop ==> $idShop');
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("คิวของคุณ"),
      ),
      bottomNavigationBar: CuttomBottomNavBar(selectedMenu: MenuState.home),
      //  backgroundColor: kMainApp,
      body: BodyBookig(),
    );
  }
}
