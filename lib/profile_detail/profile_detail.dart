import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:restaurant_app2/Api/my_api.dart';
import 'package:restaurant_app2/components/coustom_bottom_nav_bar.dart';
import 'package:restaurant_app2/model/profile_user.dart';
import 'package:restaurant_app2/profile_detail/component/profile_form.dart';

import '../enums.dart';

class ProfileEdit extends StatefulWidget {
  @override
  _ProfileEditState createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Profile"),
      ),
      body: BodyEditProfile(),
      bottomNavigationBar: CuttomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
