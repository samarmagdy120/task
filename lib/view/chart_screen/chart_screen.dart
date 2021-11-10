import 'package:flapkap_task/core/controller/home_controller.dart';
import 'package:flapkap_task/model/home_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) => Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: SfCartesianChart(
                title: ChartTitle(text: 'orders as the Y-axis and time as the X-axis'),

                // Initialize category axis
                primaryXAxis: CategoryAxis(),
                series: <ChartSeries<int, String>>[
                  // Initialize line series
                  ColumnSeries<int, String>(
                    dataSource: controller.times,
                    xValueMapper: (_, index) => index.toString(),
                    yValueMapper: (count, _) => count,
                    name: 'Orders count',
                  )
                ]),
          )),
    );
  }
}
