import 'package:flutter/material.dart';
import 'package:restaurant_app2/Restuarant/Thai_food/component/body.dart';
import 'package:restaurant_app2/components/coustom_bottom_nav_bar.dart';

import '../../enums.dart';

class ThaiFood extends StatefulWidget {
  @override
  _ThaiFoodState createState() => _ThaiFoodState();
}

class _ThaiFoodState extends State<ThaiFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Thai Food"),
      ),
      body: Body(),
      bottomNavigationBar: CuttomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
