import 'package:flapkap_task/core/services/remote/home_remote.dart';
import 'package:flapkap_task/model/home_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  HomeController() {
    getData();
  }
  List<HomeModel> homeModels = [];

  void getData() {
    HomeRemote.readJsonFile('assets/orders.json').then((value) {
      // print(value);
      homeModels = value.map((e) => HomeModel.fromJson(e)).toList();
      getTotalPriceFunction();
      getNumberOfReturnedOrder();
      times = getTimes(homeModels);
      update();
    }).catchError((error) => print(error.toString()));
  }

  String totalPriceString = '';
  String average = '';
  int totalPriceCeil = 0;

  void getTotalPriceFunction() {
    double totalPrice = 0;
    homeModels.forEach((element) {
      String priceString = element.price
          .replaceAll('\$', '')
          .replaceAll(',', '')
          .removeAllWhitespace;
      double price = double.parse(priceString);
      print(price);
      totalPrice = totalPrice + price;
      totalPriceCeil = totalPrice.ceil();
      print(totalPrice);
      totalPriceString = totalPriceCeil.toString();
    });
    double averageDouble =
        double.parse(totalPriceString) / homeModels.length - 1;
    int averageDoubleCeil = averageDouble.ceil();
    average = averageDoubleCeil.toString();
    update();
  }

/*************************/
  String numberOfReturned = '';

  getNumberOfReturnedOrder() {
    numberOfReturned = homeModels
        .where((element) => element.status == 'RETURNED')
        .length
        .toString();
    print(numberOfReturned);
    update();
  }

  /*****************************/
  List<int> times = [];

  List<int> getTimes(List<HomeModel> homeModels){
    List< int> times = [];
    for(int i =0; i<24; i++){
      final list = homeModels.where((element) => element.registered!.hour == i);
      times.add(list.length);

    }

    return times;
  }
}
