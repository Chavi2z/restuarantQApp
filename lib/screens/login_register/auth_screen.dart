import 'package:flutter/material.dart';
//import 'package:restaurant_app2/screens/login_register/login/login_screen.dart';

import 'package:restaurant_app2/screens/login_register/Register/screen_register.dart';
import 'package:restaurant_app2/screens/login_register/login/screen_login.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 120.0),
            Image(
              image: AssetImage("assets/images/logoname.png"),
              height: 100.0,
            ),
            Image(
              image: AssetImage("assets/images/intro.png"),
              height: 320.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Container(
                    width: 150.0,
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.0),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 1,
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 5.0,
                              offset: Offset(0, 2.0))
                        ]),
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterScreen()));
                  },
                  child: Container(
                    width: 150.0,
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.0),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 1,
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 5.0,
                              offset: Offset(0, 2.0))
                        ]),
                    child: Center(
                      child: Text(
                        "Register",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
