import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class SoilMoistureChart extends StatefulWidget {
  const SoilMoistureChart({Key key}) : super(key: key);

  @override
  _SoilMoistureChartState createState() => _SoilMoistureChartState();
}

class _SoilMoistureChartState extends State<SoilMoistureChart> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        child:  LineChart(
          mainData(),
        ),
      ),
    );
  }
  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(drawVerticalLine: true, drawHorizontalLine: false),
      titlesData: FlTitlesData(
        bottomTitles: SideTitles(
          showTitles: true,
          getTextStyles: (value) => const TextStyle(
              color: Colors.green, fontWeight: FontWeight.bold, fontSize: 16),
          getTitles: (value) {
            switch (value.toInt()) {
              case 0:
                return 'Mon';
              case 2:
                return 'Tue';
              case 4:
                return 'Wed';
              case 6:
                return 'Thu';
              case 8:
                return 'Fri';
              case 10:
                return 'Sat';
            }
            return '';
          },
          margin: 10,
        ),
        leftTitles: SideTitles(
          // showTitles: true,
          getTextStyles: (value) => const TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return '10k';
              case 2:
                return '30k';
              case 3:
                return '50k';
              case 4:
                return '10k';
              case 5:
                return '30k';
              case 6:
                return '50k';
            }
            return '';
          },
          margin: 30,
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          belowBarData: BarAreaData(
            colors: [Colors.white,Colors.green]
          ),
          spots: [
            FlSpot(0, 3),
            FlSpot(2.6, 2),
            FlSpot(4.9, 5),
            FlSpot(6.8, 3.1),
            FlSpot(8, 4),
            FlSpot(9.5, 3),
            FlSpot(11, 4),
          ],
          isCurved: true,
          colors: [Colors.green],
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          // belowBarData: BarAreaData(
          //   show: true,
          //   colors: [Colors.transparent],
          // ),
        ),
      ],
    );
  }
}
