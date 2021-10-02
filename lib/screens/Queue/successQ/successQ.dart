import 'package:flutter/material.dart';
import 'package:restaurant_app2/components/coustom_bottom_nav_bar.dart';
import 'package:restaurant_app2/screens/Queue/successQ/component/body.dart';

import '../../../enums.dart';

class SuccessQ extends StatefulWidget {
  @override
  _SuccessQState createState() => _SuccessQState();
}

class _SuccessQState extends State<SuccessQ> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ประวัติการจองคิว"),
      ),
      bottomNavigationBar: CuttomBottomNavBar(selectedMenu: MenuState.home),
      //  backgroundColor: kMainApp,
      body: BodyBookigcencel(),
    );
  }
}
