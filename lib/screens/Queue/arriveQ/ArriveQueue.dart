import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:restaurant_app2/Api/my_api.dart';
import 'package:restaurant_app2/components/coustom_bottom_nav_bar.dart';
import 'package:restaurant_app2/model/shop.dart';
import 'package:restaurant_app2/screens/Queue/arriveQ/component/body_Arrive.dart';

import '../../../enums.dart';

class ArriveQ extends StatefulWidget {
  const ArriveQ({Key key}) : super(key: key);

  @override
  _ArriveQState createState() => _ArriveQState();
}

class _ArriveQState extends State<ArriveQ> {
  // var restuaraut = <Shop>[];
  // @override
  // void initState() {
  //   _initData();

  //   super.initState();
  // }

  // _initData() async {
  //   CallApi().getPublicData("sql_query/select").then((response) {
  //     setState(() {
      
  //       Iterable list = json.decode(response.body);
  //       restuaraut = list.map((model) => Shop.formJson(model)).toList();
  //       print('response');
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Queue"),
      ),
      body: BodyArrive(),
      bottomNavigationBar: CuttomBottomNavBar(selectedMenu: MenuState.queue),
    );
  }
}
