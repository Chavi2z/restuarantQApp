import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

AppBar homeAppBar(BuildContext context) {
  var kerrorColor;
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    // title: RichText(
    //   text: TextSpan(
    //     style: Theme.of(context)
    //         .textTheme
    //         .title
    //         .copyWith(fontWeight: FontWeight.bold),
    //     children: [
    //       TextSpan(
    //         text: "e",
    //         style: TextStyle(color: ksecondaryColor),
    //       ),
    //       TextSpan(
    //         text: "Queue",
    //         style: TextStyle(color: kerrorColor),
    //       ),
    //     ],
    //   ),
    // ),
    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset("assets/icons/notification.svg"),
        onPressed: () {},
      ),
    ],
  );
}
