import 'package:flutter/material.dart';
import 'package:restaurant_app2/components/coutom_surfix_icon.dart';
import 'package:restaurant_app2/components/default_button.dart';
import 'package:restaurant_app2/components/form_error.dart';
import 'package:restaurant_app2/components/helper/keyboard.dart';
import 'package:restaurant_app2/screens/constants.dart';
import 'package:restaurant_app2/screens/login_register/forgot_password/fotgotPassword.dart';
import 'package:restaurant_app2/screens/login_register/login/login_success/login_success.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import '../../../size_config.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:json_serializable/json_serializable.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  bool remember = false;
  final List<String> errors = [];

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          Row(
            children: [
              Checkbox(
                value: remember,
                activeColor: kMainApp,
                onChanged: (value) {
                  setState(() {
                    remember = value;
                  });
                },
              ),
              Text("Remember me"),
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ForgotPasswordScreen()));
                },
                child: Text(
                  "Forgot Password",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(20)),
          DefaultButton(
            text: "Continue",
            press: () async {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
                // if all are valid then go to success screen
                KeyboardUtil.hideKeyboard(context);

                final response = await http.post(
                  Uri.parse(
                      'https://rocky-thicket-73738.herokuapp.com/api/auth/login'),
                  headers: <String, String>{
                    'Content-Type': 'application/json; charset=UTF-8',
                    'X-Requested-With': 'XMLHttpRequest',
                  },
                  body: jsonEncode({
                    "email": email,
                    "password": password,
                    "remember_me": remember
                  }),
                );

                print(response.statusCode);
                if (response.statusCode == 200) {
                  // print(jsonDecode(response.body).runtimeType);
                  Map<String, dynamic> value = jsonDecode(response.body);
                  var token = Access_token.fromJson(value);

                  // print('Howdy, ${token.access_token}!');
                  // print('We sent the verification link to ${token.token_type}.');
                  print('${token.token_type} ${token.access_token}');

                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => LoginSuccessScreen()));
                } else {
                  // If the server did not return a 201 CREATED response,
                  // then throw an exception.
                  print("Failed login G");
                  // print(jsonDecode(response.body));
                  // throw Exception('Failed to create album.');
                }
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }
}

// Class
class Access_token {
  final String access_token;
  final String token_type;

  Access_token(this.access_token, this.token_type);

  Access_token.fromJson(Map<String, dynamic> json)
      : access_token = json['access_token'],
        token_type = json['token_type'];

  Map<String, dynamic> toJson() => {
        'access_token': access_token,
        'token_type': token_type,
      };
}

// @JsonSerializable()
// class Token {
//   final String access_token;
//   final String token_type;
//   Token({this.access_token,  this.token_type});
//   factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);
//   Map<String, dynamic> toJson() => _$TokenonToJson(this);
// }
