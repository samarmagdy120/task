// import 'package:flapkap_task/core/controller/chart_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';
// import 'package:intl/intl.dart';
// class ChartScreen extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GetBuilder<ChartController>(
//         builder: (controller) =>
//          SfCartesianChart(
//           title: ChartTitle(text: 'Yearly sales analysis'),
//           legend: Legend(isVisible: true),
//           tooltipBehavior: controller.tooltipBehavior,
//           series: <ChartSeries>[
//             LineSeries<SalesData, double>(
//                 name: 'Sales',
//                 dataSource: controller.chartData as List<SalesData>,
//                 xValueMapper: (SalesData sales, _) => sales.year,
//                 yValueMapper: (SalesData sales, _) => sales.sales,
//                 dataLabelSettings: DataLabelSettings(isVisible: true),
//                 enableTooltip: true)
//           ],
//           primaryXAxis: NumericAxis(
//             edgeLabelPlacement: EdgeLabelPlacement.shift,
//           ),
//           primaryYAxis: NumericAxis(
//               labelFormat: '{value}M',
//               numberFormat: NumberFormat.simpleCurrency(decimalDigits: 0)),
//         ),
//       ));
//
//   }
// }
