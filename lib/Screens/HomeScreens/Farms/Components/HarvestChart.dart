import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class HarvestChart extends StatefulWidget {
  const HarvestChart({Key key}) : super(key: key);

  @override
  _HarvestChartState createState() => _HarvestChartState();
}

class _HarvestChartState extends State<HarvestChart> {
  @override
  Widget build(BuildContext context) {
    return LineChart(
      sampleData2(),
    swapAnimationDuration:
    const Duration(milliseconds: 250),
    );
  }
  LineChartData sampleData2() {
    return LineChartData(
      backgroundColor: Color(0xffdaefe1).withOpacity(0.5),
      lineTouchData: LineTouchData(
        enabled: false,
      ),
      gridData: FlGridData(
        drawHorizontalLine: true,
        drawVerticalLine: false,
      ),
      titlesData: FlTitlesData(
        bottomTitles: SideTitles(
          showTitles: true,
        //  reservedSize: 22,
          getTextStyles: (value) =>  TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          margin: 10,
          getTitles: (value) {
            switch (value.toInt()) {
              case 2:
                return '1';
              case 4:
                return '2';
              case 6:
                return '3';
              case 8:
                return '4';
              case 10:
                return '5';
              case 12:
                return '6';
              case 14:
                return '7';
            }
            return '';
          },
        ),
        leftTitles: SideTitles(
          // showTitles: true,
          getTextStyles: (value) => const TextStyle(
            color: Color(0xff75729e),
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return '1m';
              case 2:
                return '2m';
              case 3:
                return '3m';
              case 4:
                return '5m';
              case 5:
                return '6m';
            }
            return '';
          },
          margin: 8,
          reservedSize: 30,
        ),
      ),
      borderData: FlBorderData(
          show: true,
          border: const Border(
            bottom: BorderSide(),
            left: BorderSide(
              color: Colors.transparent,
            ),
            right: BorderSide(
              color: Colors.transparent,
            ),
            top: BorderSide(
              color: Colors.transparent,
            ),
          )),
      minX: 0,
      maxX: 14,
      maxY: 6,
      minY: 0,
      lineBarsData: linesBarData2(),
    );
  }
  List<LineChartBarData> linesBarData2() {
    return [
      LineChartBarData(
        spots: [
          FlSpot(1, 1),
          FlSpot(3, 4),
          FlSpot(5, 1.8),
          FlSpot(7, 5),
          FlSpot(10, 2),
          FlSpot(12, 2.2),
          FlSpot(13, 1.8),
        ],
        isCurved: true,
        curveSmoothness: 0,
        colors: [
          Colors.green,
        ],
        barWidth: 4,
        isStrokeCapRound: true,
        dotData: FlDotData(
          show: false,
        ),
        belowBarData: BarAreaData(
          show: false,
        ),
      ),
      LineChartBarData(
        spots: [
          FlSpot(1, 1),
          FlSpot(3, 2.8),
          FlSpot(7, 1.2),
          FlSpot(10, 2.8),
          FlSpot(12, 2.6),
          FlSpot(13, 3.9),
        ],
        isCurved: false,
        colors: const [
          Colors.red,
        ],
        barWidth: 4,
        isStrokeCapRound: true,
        dotData: FlDotData(
          show: false,
        ),
      ),
      LineChartBarData(
        spots: [
          FlSpot(1, 3.8),
          FlSpot(3, 1.9),
          FlSpot(6, 5),
          FlSpot(10, 3.3),
          FlSpot(13, 4.5),
        ],
        isCurved: false,
        colors: [
          Colors.blue[500],
        ],
        barWidth: 2,
        isStrokeCapRound: true,
        belowBarData: BarAreaData(
          show: false,
        ),
        dotData: FlDotData(
          show: false,
        ),
      ),
    ];
  }
}