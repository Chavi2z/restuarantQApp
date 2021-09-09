import 'package:flutter/material.dart';
import 'package:restaurant_app2/login/component/Body.dart';
import 'package:restaurant_app2/widgets/size_config.dart';


class LoginScreen extends StatelessWidget {
  static String routeName = "/login";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Body(),
    );
  }
}
