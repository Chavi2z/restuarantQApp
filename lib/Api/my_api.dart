import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class CallApi {
  final String _url = 'http://rocky-thicket-73738.herokuapp.com/api/';
  final String _imgUrl = 'http://rocky-thicket-73738.herokuapp.com/uploads/';
  getImage() {
    return _imgUrl;
  }

  // postData(data, apiUrl) async {
  //   var fullUrl = _url + apiUrl + await _getToken();
  //   return await http.post(Uri.parse(fullUrl),
  //       body: jsonEncode(data), headers: _setHeaders());
  // }

  // getData(apiUrl) async {
  //   var fullUrl = _url + apiUrl + await _getToken();
  //   return await http.get(Uri.parse(fullUrl), headers: _setHeaders());
  // }

  // _setHeaders() => {
  //       'Content-Type': 'application/json',
  //       'X-Requested-With': 'XMLHttpRequest',
  //     };

  // _getToken() async {
  //   SharedPreferences localStorage = await SharedPreferences.getInstance();
  //   var token = localStorage.getString('token');
  //   return '?token=$token';
  // }

  getArticles(apiUrl) async {}

  getPublicData(apiUrl) async {
    // var headers = {
    //   'Content-Type': 'application/json',
    //   'X-Requested-With': 'XMLHttpRequest'
    // };
    // var request = http.Request('POST', Uri.parse(_url + apiUrl));
    // request.body = json.encode({"sql_query": "select * from restaurants"});
    // request.headers.addAll(headers);
    // print(request.body);

    // http.StreamedResponse response = await request.send();

    // if (response.statusCode == 200) {
    //   print(await response.stream.bytesToString());
    // } else {
    //   print(response.reasonPhrase);
    // }

    // http.Response response =
    //     await http.post(Uri.parse(_url + apiUrl), headers: _setHeaders());
    // try {
    //   if (response.statusCode == 200) {
    //     return response;
    //   } else {
    //     return 'failed';
    //   }
    // } catch (e) {
    //   print(e);
    //   return 'failed';
    // }
  }
}
