import 'dart:convert';

import 'package:flapkap_task/core/controller/home_controller.dart';
import 'package:flapkap_task/core/services/remote/home_remote.dart';
import 'package:flapkap_task/model/home_model.dart';
import 'package:flapkap_task/view/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }

}
