import 'package:flutter/material.dart';
import 'package:restaurant_app2/screens/login_register/login/Body.dart';

import '../../../size_config.dart';

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
