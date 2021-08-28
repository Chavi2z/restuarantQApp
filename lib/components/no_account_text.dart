import 'package:flutter/material.dart';
import 'package:restaurant_app2/screens/constants.dart';
import 'package:restaurant_app2/screens/login_register/Register/screen_register.dart';

import '../size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don’t have an account? ",
          style: TextStyle(fontSize: getProportionateScreenWidth(16)),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => RegisterScreen()));
          },
          child: Text(
            "Register",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(16), color: kMainApp),
          ),
        ),
      ],
    );
  }
}
