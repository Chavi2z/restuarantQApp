import 'package:flutter/material.dart';
import 'package:restaurant_app2/components/coustom_bottom_nav_bar.dart';
import 'package:restaurant_app2/screens/Profile/component/profile_body.dart';

import '../../enums.dart';


class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Body(),
      bottomNavigationBar: CuttomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
