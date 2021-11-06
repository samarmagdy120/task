// var url = Uri.parse('https://example.com/whatsit/create');
// var response = await http.post(url, body: {'name': 'doodle', 'color': 'blue'});
// print(response.statusCode);
// print(response.body);
//
// print(await http.read(Uri.parse('https://example.com/foobar.txt')));
import 'dart:convert';
import 'package:flutter/services.dart';

class HomeRemote {

  static Future readJsonFile(url) async {

    final  response = await rootBundle.loadString(url);
    final list = await json.decode(response);
    return list;
  }

}
