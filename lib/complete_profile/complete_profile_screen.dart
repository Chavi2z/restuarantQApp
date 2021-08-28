import 'package:flutter/material.dart';
import 'package:restaurant_app2/complete_profile/component/body.dart';

class CompleteProfileScreen extends StatelessWidget {
  static String routeName = "/complete_profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Body(),
    );
  }
}
