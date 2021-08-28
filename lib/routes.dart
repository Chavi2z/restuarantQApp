import 'dart:js';

import 'package:flutter/widgets.dart';
import 'package:restaurant_app2/screens/HomeScreen/HomeScreen.dart';
import 'package:restaurant_app2/screens/login_register/Register/conponents/Register_form.dart';
import 'package:restaurant_app2/screens/login_register/Register/screen_register.dart';
import 'package:restaurant_app2/screens/login_register/forgot_password/fotgotPassword.dart';
import 'package:restaurant_app2/screens/login_register/login/login_success/login_success.dart';
import 'package:restaurant_app2/screens/login_register/login/screen_login.dart';

final Map<String, WidgetBuilder> routes = {
  LoginScreen.routeName: (context) => LoginScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  RegisterScreen.routeName: (context) => RegisterScreen(),
};
