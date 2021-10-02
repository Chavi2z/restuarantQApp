import 'package:flutter/material.dart';
import 'package:restaurant_app2/components/coustom_bottom_nav_bar.dart';
import 'package:restaurant_app2/enums.dart';
import 'package:restaurant_app2/screens/Queue/cancelQ/component/body.dart';

class CencelQ extends StatefulWidget {
  @override
  _CencelQState createState() => _CencelQState();
}

class _CencelQState extends State<CencelQ> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ประวัติการจองคิว"),
      ),
      bottomNavigationBar: CuttomBottomNavBar(selectedMenu: MenuState.home),
      //  backgroundColor: kMainApp,
      body: BodyBookigSuccess(),
    );
  }
}
