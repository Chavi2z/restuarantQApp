import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:flutter_toggle_tab/helper.dart';

class MenuToggel extends StatefulWidget {
  @override
  _MenuToggelState createState() => _MenuToggelState();
}

class _MenuToggelState extends State<MenuToggel> {
  var _tabTextIndexSelected = 1;

  var _listTextTabToggle = ["คิวที่กำลังมาถึง", "ประวัติการจองคิว"];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: heightInPercent(3, context),
          ),
          FlutterToggleTab(
            width: 90,
            borderRadius: 30,
            height: 50,
            selectedIndex: _tabTextIndexSelected,
            selectedBackgroundColors: [Colors.blue, Colors.blueAccent],
            selectedTextStyle: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),
            unSelectedTextStyle: TextStyle(
                color: Colors.black87,
                fontSize: 14,
                fontWeight: FontWeight.w500),
            labels: _listTextTabToggle,
            
            selectedLabelIndex: (index) {
              setState(() {
                _tabTextIndexSelected = index;
                
              });
            },
            isScroll: false,
          ),
        ],
      ),
    );
  }
}
