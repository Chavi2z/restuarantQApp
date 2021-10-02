import 'package:flutter/material.dart';
import 'package:restaurant_app2/components/coustom_bottom_nav_bar.dart';
import 'package:restaurant_app2/screens/Queue/historyQ/component/body_History.dart';

import '../../../enums.dart';

class HistoryQ extends StatefulWidget {
  @override
  _HistoryQState createState() => _HistoryQState();
}

class _HistoryQState extends State<HistoryQ> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Queue"),
      ),
      body: BodyHitory(),
      bottomNavigationBar: CuttomBottomNavBar(selectedMenu: MenuState.queue),
    );
  }
}
