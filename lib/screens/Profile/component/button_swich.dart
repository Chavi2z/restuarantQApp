import 'package:custom_switch/custom_switch.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app2/widgets/constants.dart';

class SwitchMenu extends StatefulWidget {
  @override
  _SwitchMenuState createState() => _SwitchMenuState();
}

class _SwitchMenuState extends State<SwitchMenu> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        CustomSwitch(
          activeColor: kDarkblueColor,
          value: status,
          onChanged: (value) {
            print("VALUE : $value");
            setState(() {
              status = value;
            });
          },
        ),
  
      ],
    );
  }
}
