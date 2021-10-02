import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:restaurant_app2/Api/my_api.dart';
import 'package:restaurant_app2/model/shop.dart';
import 'package:restaurant_app2/screens/detailFood/detailFood.dart';
import 'package:restaurant_app2/widgets/size_config.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class ShowProduct extends StatefulWidget {
  const ShowProduct({Key key}) : super(key: key);

  @override
  _ShowProductState createState() => _ShowProductState();
}

class _ShowProductState extends State<ShowProduct> {
  var getProduct = <Shop>[];
  @override
  void initState() {
    _initData();
    super.initState();
  }

  _initData() async {
    var headers = {
      'Content-Type': 'application/json',
      'X-Requested-With': 'XMLHttpRequest'
    };
    var request = http.Request(
        'POST',
        Uri.parse(
            'http://rocky-thicket-73738.herokuapp.com/api/sql_query/select'));
    request.body = json.encode({"sql_query": "select * from restaurants"});
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }
  }

  List<_FeaturePhoto> _feature() {
    return [
      _FeaturePhoto(
        imageURL:
            'https://cdn.pixabay.com/photo/2017/02/20/18/03/cat-2083492_960_720.jpg',
        name: 'McDonalds',
        address: 'McDonalds123456789',
        time: "ทุกวัน: 10:00 - 20:30",
      ),
      _FeaturePhoto(
        imageURL:
            'https://cdn.pixabay.com/photo/2011/09/27/18/52/sparrow-9950_960_720.jpg',
        name: 'McDonalds2',
        address: 'McDonalds123456789',
        time: "ทุกวัน: 10:00 - 20:30",
      ),
      _FeaturePhoto(
        imageURL:
            'https://cdn.pixabay.com/photo/2016/12/04/21/58/rabbit-1882699_960_720.jpg',
        name: 'McDonalds3',
        address: 'McDonalds123456789',
        time: "ทุกวัน: 10:00 - 20:30",
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 320,
        width: 500,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => DetailFood()));
          },
          child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(10.0),
              children: _feature().map<Widget>((photo) {
                return _FeatureGridItem(featurePhoto: photo); //Feature(photo);
              }).toList()),
        ));
  }
}

class _FeaturePhoto {
  _FeaturePhoto({
    this.imageURL,
    this.name,
    this.address,
    this.time,
    this.images,
  });
  final String imageURL;
  final String name;
  final String address;
  final String time;

  final String images;
}

class _FeatureText extends StatelessWidget {
  const _FeatureText(this.text, this.fontSize);
  final String text;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 14),
      child: Text(text,
          style:
              TextStyle(fontFamily: 'ConcertOne-Regular', fontSize: fontSize)),
    );
  }
}

class _FeatureMainText extends StatelessWidget {
  const _FeatureMainText(this.text, this.fontSize);
  final String text;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 14),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: getProportionateScreenWidth(20),
          color: Color(0xFF3961ab),
        ),
      ),
    );
  }
}

class _FeatureGridItem extends StatelessWidget {
  _FeatureGridItem({Key key, @required this.featurePhoto}) : super(key: key);

  final _FeaturePhoto featurePhoto;
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Card(
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Stack(
              children: <Widget>[
                Image.network(featurePhoto.imageURL,
                    width: 230, height: 200, fit: BoxFit.cover),
              ],
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            elevation: 5,
            margin: EdgeInsets.all(10),
          ),
          _FeatureMainText(featurePhoto.name, 18),
          _FeatureText(featurePhoto.address, 12),
          _FeatureText(featurePhoto.time, 12),
        ]);
  }
}
















// class Features extends StatelessWidget {
//   List<_FeaturePhoto> _feature() {
//     return [
//       _FeaturePhoto(
//         imageURL:
//             'https://cdn.pixabay.com/photo/2017/02/20/18/03/cat-2083492_960_720.jpg',
//         name: 'McDonalds',
//         address: 'McDonalds123456789',
//         time: "ทุกวัน: 10:00 - 20:30",
//       ),
//       _FeaturePhoto(
//         imageURL:
//             'https://cdn.pixabay.com/photo/2011/09/27/18/52/sparrow-9950_960_720.jpg',
//         name: 'McDonalds2',
//         address: 'McDonalds123456789',
//         time: "ทุกวัน: 10:00 - 20:30",
//       ),
//       _FeaturePhoto(
//         imageURL:
//             'https://cdn.pixabay.com/photo/2016/12/04/21/58/rabbit-1882699_960_720.jpg',
//         name: 'McDonalds3',
//         address: 'McDonalds123456789',
//         time: "ทุกวัน: 10:00 - 20:30",
//       ),
//     ];
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         height: 320,
//         width: 500,
//         child: GestureDetector(
//           onTap: () {
//             Navigator.push(
//                 context, MaterialPageRoute(builder: (context) => DetailFood()));
//           },
//           child: ListView(
//               scrollDirection: Axis.horizontal,
//               padding: EdgeInsets.all(10.0),
//               children: _feature().map<Widget>((photo) {
//                 return _FeatureGridItem(featurePhoto: photo); //Feature(photo);
//               }).toList()),
//         ));
//   }
// }

// class _FeaturePhoto {
//   _FeaturePhoto({
//     this.imageURL,
//     this.name,
//     this.address,
//     this.time,
//     this.images,
//   });
//   final String imageURL;
//   final String name;
//   final String address;
//   final String time;

//   final String images;
// }

// class _FeatureText extends StatelessWidget {
//   const _FeatureText(this.text, this.fontSize);
//   final String text;
//   final double fontSize;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(left: 14),
//       child: Text(text,
//           style:
//               TextStyle(fontFamily: 'ConcertOne-Regular', fontSize: fontSize)),
//     );
//   }
// }

// class _FeatureMainText extends StatelessWidget {
//   const _FeatureMainText(this.text, this.fontSize);
//   final String text;
//   final double fontSize;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(left: 14),
//       child: Text(
//         text,
//         style: TextStyle(
//           fontWeight: FontWeight.w700,
//           fontSize: getProportionateScreenWidth(20),
//           color: Color(0xFF3961ab),
//         ),
//       ),
//     );
//   }
// }

// class _FeatureGridItem extends StatelessWidget {
//   _FeatureGridItem({Key key, @required this.featurePhoto}) : super(key: key);

//   final _FeaturePhoto featurePhoto;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Card(
//             semanticContainer: true,
//             clipBehavior: Clip.antiAliasWithSaveLayer,
//             child: Stack(
//               children: <Widget>[
//                 Image.network(featurePhoto.imageURL,
//                     width: 230, height: 200, fit: BoxFit.cover),
//               ],
//             ),
//             shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10.0)),
//             elevation: 5,
//             margin: EdgeInsets.all(10),
//           ),
//           _FeatureMainText(featurePhoto.name, 18),
//           _FeatureText(featurePhoto.address, 12),
//           _FeatureText(featurePhoto.time, 12),
//         ]);
//   }
// }
