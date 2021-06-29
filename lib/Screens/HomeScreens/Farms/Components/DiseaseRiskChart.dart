import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
class DiseaseRiskChart extends StatefulWidget {
  const DiseaseRiskChart({Key key}) : super(key: key);

  @override
  _DiseaseRiskChartState createState() => _DiseaseRiskChartState();
}

class _DiseaseRiskChartState extends State<DiseaseRiskChart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LineChart(
        LineChartData(
          backgroundColor: Color(0xffdaefe1).withOpacity(0.5),
            gridData: FlGridData(
              drawHorizontalLine: false,
              drawVerticalLine: true,
            ),
            titlesData: FlTitlesData(
              leftTitles: SideTitles(
                showTitles: false,
              ),
            ),
            lineBarsData: [
              LineChartBarData(
                preventCurveOverShooting: true,
                colors: [
                  Colors.blue
                ],
                dotData: FlDotData(
                    getDotPainter:DotPainter
                ),
                spots: [
                  FlSpot(0, 1),
                  FlSpot(1, 3),
                  FlSpot(2, 10),
                  FlSpot(3, 7),
                  FlSpot(4, 6),
                  FlSpot(5, 2),
                ],
              ),
            ],
            borderData: FlBorderData(
              show: false,
            )
        ),
      ),
    );
  }
  FlDotPainter DotPainter(FlSpot spot, double xPercentage, LineChartBarData bar, int index,)
  {
    return FlDotCirclePainter(
        radius: 6,
        color: Colors.green,
        strokeWidth: 0
    );
  }
}
