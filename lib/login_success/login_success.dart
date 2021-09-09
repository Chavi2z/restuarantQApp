import 'package:flutter/material.dart';
import 'package:restaurant_app2/login_success/components/body.dart';
import 'package:restaurant_app2/model/json/Token.dart';


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
