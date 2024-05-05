import 'package:crypto_market/app/constant.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CryptoDetailsChart extends StatelessWidget {
  const CryptoDetailsChart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 1.70,
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(18),
              ),
              // color: Color(0xff232d37),
            ),
            child: LineChart(LineChartData(
              gridData: FlGridData(
                show: false,
                drawVerticalLine: false,
                getDrawingHorizontalLine: (value) {
                  return FlLine(
                    color: const Color(0xff37434d),
                    strokeWidth: 1,
                  );
                },
                getDrawingVerticalLine: (value) {
                  return FlLine(
                    color: const Color(0xff37434d),
                    strokeWidth: 1,
                  );
                },
              ),
              titlesData: FlTitlesData(
                show: true,
                rightTitles: SideTitles(showTitles: false),
                topTitles: SideTitles(showTitles: false),
                bottomTitles: SideTitles(
                  showTitles: false,
                  reservedSize: 22,
                  interval: 1,
                  getTextStyles: (context, value) => const TextStyle(
                      color: Color(0xff68737d),
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                  getTitles: (value) {
                    switch (value.toInt()) {
                      case 2:
                        return 'MAR';
                      case 5:
                        return 'JUN';
                      case 8:
                        return 'SEP';
                    }
                    return '';
                  },
                  margin: 8,
                ),
                leftTitles: SideTitles(
                  showTitles: false,
                  interval: 1,
                  getTextStyles: (context, value) => const TextStyle(
                    color: Color(0xff67727d),
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                  getTitles: (value) {
                    switch (value.toInt()) {
                      case 1:
                        return '10k';
                      case 3:
                        return '30k';
                      case 5:
                        return '50k';
                    }
                    return '';
                  },
                  reservedSize: 32,
                  margin: 12,
                ),
              ),
              borderData: FlBorderData(
                  show: false,
                  border: Border.all(color: const Color(0xff37434d), width: 1)),
              minX: 0,
              maxX: 11,
              minY: 0,
              maxY: 6,
              lineBarsData: [
                LineChartBarData(
                  spots: const [
                    FlSpot(0, 3),
                    FlSpot(2.6, 2),
                    FlSpot(4.9, 5),
                    FlSpot(6.8, 3.1),
                    FlSpot(8, 4),
                    FlSpot(9.5, 3),
                    FlSpot(11, 4),
                  ],
                  isCurved: true,
                  colors: [
                    kOrangeColor,
                    kPurpleColor,
                  ],
                  barWidth: 2,
                  isStrokeCapRound: true,
                  dotData: FlDotData(
                    show: false,
                  ),
                  belowBarData: BarAreaData(
                    show: true,
                    gradientFrom: const Offset(-1, 0),
                    gradientTo: const Offset(0, 1),
                    colors: [
                      kOrangeColor,
                      kPurpleColor,
                    ].map((color) => color.withOpacity(0.1)).toList(),
                  ),
                ),
              ],
            )),
          ),
        ),
      ],
    );
  }
}
