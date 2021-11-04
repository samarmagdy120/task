import 'package:flapkap_task/core/services/remote/home_remote.dart';
import 'package:flapkap_task/view/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  HomeRemote.readJsonFile();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
