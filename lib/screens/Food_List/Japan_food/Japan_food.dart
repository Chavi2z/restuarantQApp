import 'package:flutter/material.dart';
import 'package:restaurant_app2/components/coustom_bottom_nav_bar.dart';
import 'package:restaurant_app2/screens/Food_List/Thai_food/component/Thai_food_body.dart';

import '../../../enums.dart';

class JapanFood extends StatefulWidget {
  @override
  _JapanFoodState createState() => _JapanFoodState();
}

class _JapanFoodState extends State<JapanFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Japan Food"),
      ),
      body: Body(),
      bottomNavigationBar: CuttomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
