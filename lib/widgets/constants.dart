import 'package:flutter/material.dart';

import 'size_config.dart';


const kPrimaryColor = Color(0xFFE30000);
const ksecondaryColor = Color(0xFFF36161);
const kTextColor2 = Color(0xFF50505D);
const kTextLightColor = Color(0xFF6A727D);
const kBackgroundColor = Color(0xFFF8F8F8);
const kblueColor = Color(0xFF517EC3);
const kDarkblueColor = Color(0xFF3368B9);


const kActiveIconColor = Color(0xFFE68342);
const kTextColor = Color(0xFF222B45);
const kTextBarColor = Color(0xFFE6E6E6);
const kBlueLightColor = Color(0xFFC7B8F5);
const kBlueColor = Color(0xFF817DC0);
const kShadowColor = Color(0xFFE6E6E6);
const kMainApp = Color(0xFF3961ab);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}
