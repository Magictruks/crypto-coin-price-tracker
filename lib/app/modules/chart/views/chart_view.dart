import 'package:container_tab_indicator/container_tab_indicator.dart';
import 'package:crypto_market/app/constant.dart';
import 'package:crypto_market/app/data/widgets/crypto_svg/crypto_svg_widget.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:container_tab_indicator/container_tab_indicator.dart';

import 'package:get/get.dart';

import '../controllers/chart_controller.dart';

class ChartView extends GetView<ChartController> {
  const ChartView({Key? key, required this.token}) : super(key: key);

  final String token;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBackgroundColor,
      child: Container(
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            colors: [kDetailPurpleGradient, kDetailOrangeGradient],
            center: Alignment.centerRight,
            radius: 1.8,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
          ),
          body: SafeArea(
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 3,
                        child: CrytoSvg(token: token, size: 100,),
                      ),
                      Expanded(
                        child: RichText(
                          text: const TextSpan(children: [
                            TextSpan(
                                text: '\$',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 24.0)),
                            TextSpan(
                                text: '10,000',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 36.0)),
                            TextSpan(
                                text: '.00',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    color: kGreyColor))
                          ]),
                        ),
                      ),
                      const Expanded(
                        child: Chip(
                          label: Text(
                            '+2.5% (24h)',
                            style: TextStyle(
                                color: kChipTextGreen,
                                fontWeight: FontWeight.bold),
                          ),
                          avatar: Icon(
                            Icons.arrow_drop_up,
                            color: kChipTextGreen,
                          ),
                          backgroundColor: kChipBackgroundGreen,
                        ),
                      ),
                      const CryptoDetailsChart(),
                      // DefaultTabController(
                      //   length: 5,
                      //   child: Container(
                      //     color: kBackgroundColor,
                      //     padding: EdgeInsets.all(8),
                      //     child: Container(
                      //       margin: EdgeInsets.symmetric(horizontal: 36.0),
                      //       decoration: BoxDecoration(
                      //         color: kDetailPurpleGradient,
                      //         // border: Border.all(color: Colors.black, width: 3),
                      //         borderRadius: BorderRadius.all(Radius.circular(18)),
                      //       ),
                      //       child: TabBar(
                      //         padding: EdgeInsets.all(0),
                      //
                      //         tabs: [
                      //           Tab(
                      //             child: Text('1d'),
                      //           ),
                      //           Tab(
                      //             child: Text('1w'),
                      //           ),
                      //           Tab(
                      //             child: Text('1m'),
                      //           ),
                      //           Tab(
                      //             child: Text('1y'),
                      //           ),
                      //           Tab(
                      //             child: Text('All'),
                      //           ),
                      //         ],
                      //         indicator: ContainerTabIndicator(
                      //           color: kGreyColor,
                      //           radius: BorderRadius.all(Radius.circular(16.0)),
                      //           padding: EdgeInsets.all(8.0),
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    color: kBackgroundColor,
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      children: const [
                        CryptoDetailsInfo(title: 'Trading Volume', price: '\$2,310,444,879.91', percent: '16.06', isBullish: true,),
                        Divider(height: 20, thickness: 1, color: kGreyColor,),
                        CryptoDetailsInfo(title: 'Market Cap', price: '\$92,483,944,153.16', percent: '5.31', isBullish: false,),
                        Divider(height: 20, thickness: 1, color: kGreyColor,),
                        CryptoDetailsInfo(title: 'All Time High (May, 10, 2021)', price: '\$690.93', percent: '19.75', isBullish: false,),
                        Divider(height: 20, thickness: 1, color: kGreyColor,),
                        CryptoDetailsInfo(title: 'All Time Low (Aug, 01, 2017', price: '\$0.09611', percent: '576821.14', isBullish: true,),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          bottomNavigationBar: const BottomAppBar(
            color: kBackgroundColor,
          )
        ),
      ),
    );
    // return Container(
    //   child: CryptoDetailsChart(gradientColors: gradientColors),
    // );
  }
}

class CryptoDetailsInfo extends StatelessWidget {
  const CryptoDetailsInfo({
    Key? key,
    required this.title,
    required this.price,
    required this.percent,
    required this.isBullish,
  }) : super(key: key);

  final String title;
  final String price;
  final String percent;
  final bool isBullish;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(color: kGreyColor),),
            SizedBox(height: 8,),
            Text(price, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14.0),),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(isBullish ? Icons.arrow_drop_up : Icons.arrow_drop_down, color: isBullish ? kGreenColor : kRedColor,),
            Text('$percent%', style: TextStyle(color: isBullish ? kGreenColor : kRedColor, fontWeight: FontWeight.bold),),
          ],
        )
      ],
    );
  }
}

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
