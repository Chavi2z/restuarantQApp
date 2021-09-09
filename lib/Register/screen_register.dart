import 'package:flutter/material.dart';
import 'package:restaurant_app2/Register/conponents/body.dart';
import 'package:restaurant_app2/widgets/size_config.dart';

class RegisterScreen extends StatelessWidget {
  static String routeName = "/Register";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
      ),
      body: Body(),
    );
  }
}
