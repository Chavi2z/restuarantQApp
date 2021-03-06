import 'package:flutter/material.dart';
import 'package:restaurant_app2/components/coustom_bottom_nav_bar.dart';
import 'package:restaurant_app2/detailFood/component/body.dart';
import 'package:restaurant_app2/screens/constants.dart';

import '../enums.dart';

class DetailFood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: CuttomBottomNavBar(selectedMenu: MenuState.home),
      //  backgroundColor: kMainApp,
      body: Body(),
    );
  }
}
