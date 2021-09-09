import 'dart:js';

import 'package:flutter/widgets.dart';
import 'package:restaurant_app2/Register/screen_register.dart';
import 'package:restaurant_app2/forgot_password/fotgotPassword.dart';
import 'package:restaurant_app2/login/screen_login.dart';
import 'package:restaurant_app2/login_success/login_success.dart';
import 'package:restaurant_app2/screens/HomeScreen/HomeScreen.dart';

final Map<String, WidgetBuilder> routes = {
  LoginScreen.routeName: (context) => LoginScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  RegisterScreen.routeName: (context) => RegisterScreen(),
};
