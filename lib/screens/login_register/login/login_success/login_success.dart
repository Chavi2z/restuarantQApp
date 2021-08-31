import 'package:flutter/material.dart';
import 'package:restaurant_app2/model/Token.dart';
import 'package:restaurant_app2/screens/login_register/login/login_success/components/body.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String routeName = "/login_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text("Login Success"),
      ),
      body: Body(),
    );
  }
}
