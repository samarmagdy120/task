import 'dart:convert';

import 'package:flapkap_task/core/services/remote/home_remote.dart';
import 'package:flapkap_task/model/home_model.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {

  HomeController(){
    getData();
  }
  HomeModel? homeModel;

  void getData() {
    HomeRemote.readJsonFile('assets/orders.json').then((value) {
      homeModel = HomeModel.fromJson(value);
      print(homeModel);
    }).catchError((error)=> print(error.toString()));
  }
}
