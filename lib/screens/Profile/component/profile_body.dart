import 'package:flutter/material.dart';
import 'package:restaurant_app2/Auth/auth_screen.dart';
import 'package:restaurant_app2/profile_detail/profile_detail.dart';
import 'package:restaurant_app2/screens/Profile/component/Noti_menu.dart';
import 'package:restaurant_app2/screens/Profile/component/button_swich.dart';
import 'package:restaurant_app2/screens/Profile/component/profile_menu.dart';
import 'package:restaurant_app2/screens/Profile/component/profile_pic.dart';
import 'package:restaurant_app2/widgets/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          Text(
            'Chatchadaporn',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: getProportionateScreenWidth(20),
              color: Color(0xFF3961ab),
            ),
          ),
          SizedBox(height: 20),
          ProfileMenu(
            text: "My Account",
            icon: "assets/icons/User Icon.svg",
            press: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfileEdit())),
            },
          ),
          NotiMenu(
            text: "Notifications",
            icon: "assets/icons/Bell.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Log Out",
            icon: "assets/icons/Log out.svg",
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AuthScreen()));
            },
          ),
        ],
      ),
    );
  }
}
