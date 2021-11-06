import 'dart:convert';

import 'package:flapkap_task/core/controller/home_controller.dart';
import 'package:flapkap_task/view/chart_screen/chart_screen.dart';
import 'package:flapkap_task/view/widgets/custom_button.dart';
import 'package:flapkap_task/view/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeScreen extends StatelessWidget {
  // Future<void> readJson() async {
  //   final String response = await rootBundle.loadString('assets/orders.json');
  //   final data = await json.decode(response);
  //   print(data);
  //
  // }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#24243e"),
      body: GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller)=> Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 200,
                        height: 210,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(colors: [
                              HexColor("#ec008c"),
                              HexColor("#fc6767")
                            ])),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(
                              text: "Total Count",
                              color: Colors.white,
                              alignment: Alignment.center,
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            CustomText(
                              text: "454",
                              color: Colors.white,
                              alignment: Alignment.center,
                              fontSize: 20,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 200,
                        height: 210,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(colors: [
                              HexColor("#e65c00"),
                              HexColor("#F9D423")
                            ])),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(
                              text: "Average Price",
                              color: Colors.white,
                              alignment: Alignment.center,
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            CustomText(
                              text: "180",
                              color: Colors.white,
                              alignment: Alignment.center,
                              fontSize: 20,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 200,
                    height: 210,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            colors: [HexColor("#FFE000"), HexColor("#799F0C")])),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(
                          text: "Number of Returns",
                          color: Colors.white,
                          alignment: Alignment.center,
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CustomText(
                          text: "180",
                          color: Colors.white,
                          alignment: Alignment.center,
                          fontSize: 20,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
                width: double.infinity,
                alignment: Alignment.bottomCenter,
                child: CustomButton(
                  text: "CHART",
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  // onPressed: () {
                  //     Get.to(()=>ChartScreen());
                  // },
                ))
          ],
        ),
      ),
    );
  }
}
